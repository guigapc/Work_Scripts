#!/usr/local/bin/php -q

<?php
        $local_connect_value = " \n Nome_usuario: " . getenv('common_name') . " \n IP_cliente_VPN: " . getenv('ifconfig_pool_remote_ip') ." conectado de " . getenv('trusted_ip') . " no dia " . date('d/m/Y H:i:s') . ", \n duracao : " . round(((getenv('time_duration'))/3600),2) . "  horas, ou " . round(((getenv('time_duration'))/60),2) . "  minutos, ou " . getenv('time_duration') . "  segundos,\n upload do client-vpn (recebido) : " . round(((getenv('bytes_received'))/1048576),2) . " MB, \n download para client-vpn (enviado) : " . round(((getenv('bytes_sent'))/1048576),2) . " MB. \n DESCONECTADO. \n";
        $filelog = "/var/log/openvpnconexoes/" . getenv('common_name') . ".log";
        file_put_contents($filelog, $local_connect_value,FILE_APPEND);
?>