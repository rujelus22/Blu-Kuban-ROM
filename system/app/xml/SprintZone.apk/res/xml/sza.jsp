<?xml version="1.0" encoding="utf-8"?>
<spa ver="2" opt="0">
    <pages ver="1">
        <promotion ver="1">
            <category sid="100" title="Contact Sprint">
                <feature id="101" title="Call Sprint" desc="Click here to call Sprint now." img="sprint.png" action="call" uri="tel:*2" />
            </category>
            <category sid="200" title="My Device">
                <feature id="201" title="My Connections" desc="" img="sprint.png" action="connection" />
                <feature id="202" title="Update Profile" desc="A profile update is available, update now to ensure full access to the network and data services." img="sprint.png" action="function" uri="cicd" />
                <feature id="203" title="Update Firmware" desc="Update firmware" img="alert_icon.png" action="function" uri="cifo" visible="false" />
                <feature id="204" title="Coverage Update" desc="A coverage update (PRL) is available, update now to maximize your coverage area." img="alert_icon.png" action="function" uri="ciprl" visible="false" />
            </category>
            <category sid="300" title="Contact Sprint">
                <feature id="301" title="Call Sprint" desc="Click here to call Sprint now." img="sprint.png" action="call" uri="tel:*2" />
            </category>
            <category sid="400" title="My Device">
                <feature id="401" title="Activate My Device" desc="This Device is not currently active on Sprint Account Click here to activate" img="sprint.png" action="activate" />
            </category>
            <category sid="600" title="Device Configuration">
                <feature id="601" title="About Phone" desc="" action="customer_care" uri="about_phone" />
                <feature id="602" title="Cell Location" desc="" action="customer_care" uri="cell_location" />
                <feature id="603" title="Signal strength" desc="" action="customer_care" uri="signal_strength" />
                <feature id="604" title="Network Info" desc="" action="customer_care" uri="network_info" />
                <feature id="605" title="Data Restore Tool" desc="Reset Data Subscription." action="factory_reset" />
            </category>
            <category sid="700" title="Diagnostics">
                <feature id="701" title="Power Configuration" desc="High power drain..." action="activity" uri="com.sprint.dsa.PowerConfigActivity" extra="Power Config" visible="false" />
                <feature id="799" title="More Diagnostics" desc="View additional device diagnostics" action="more_diagnostics" uri="more_diagnostics" extra="More Diagnostics" />
            </category>
        </promotion>
        <page id="2">
            <pcategory id="100" order="1" />
            <pcategory id="1" order="2" />
            <pcategory id="200" order="3" />
            <pcategory id="4" order="4" />
            <pcategory id="700" order="5" />
        </page>
        <page id="3">
            <pcategory id="200" order="1" />
            <pcategory id="100" order="2" />
            <pcategory id="700" order="5" />
        </page>
        <page id="4">
            <pcategory id="400" order="1" />
            <pcategory id="300" order="2" />
            <pcategory id="700" order="3" />
        </page>
        <page id="5">
            <pcategory id="600" order="2" />
        </page>
    </pages>
    <diagnostics>
        <group key="power" title="Battery Diagnostics" />
        <diagnostic key="power.config" title="Settings affecting battery life">
            <string name="config.title">Settings affecting battery life</string>
            <string name="config.description">Review settings affecting the life of your battery.</string>
            <info title="Power Configuration" action="function" uri="power_configuration" />
        </diagnostic>
        <diagnostic key="power.usage" title="Current battery usage">
            <string name="usage.title">Current battery usage</string>
            <string name="usage.description">Review applications using power and battery life.</string>
            <info title="Power Usage" action="function" uri="power_usage">Current power usage.</info>
        </diagnostic>
        <group key="network" title="Data Connection Diagnostics" />
        <diagnostic key="3g" title="3G">
            <string name="status.enabled">Turned on.</string>
            <string name="status.disabled">Turned off.</string>
            <string name="status.disconnected">Not connected.</string>
            <string name="status.connected">Connected.</string>
            <string name="status.unavailable">Not available.</string>
            <string name="status.unavailable.airplanemode">Not available. Device is in airplane mode.</string>
            <string name="status.unavailable.inactivedevive">Not available. Device has not been activated.</string>
            <string name="config.title">Data Roaming</string>
            <string name="status.test.start">Touch to start test.</string>
            <string name="status.test.running">Test running....</string>
            <string name="status.test.canceled">Test canceled.</string>
            <string name="status.test.successful">Test successful.</string>
            <string name="status.test.failed">Test failed.</string>
            <string name="status.test.failed.airplanemode">Test failed. Device is in airplane mode.</string>
            <string name="status.test.failed.inactivedevive">Test failed. Device has not been activated.</string>
            <string name="status.test.failed.wifion">Test failed. Wi-Fi is active network.</string>
            <string name="status.test.failed.onvoicecall">Test failed. Voice call is active.</string>
            <info title="Data Roaming Information">If you are not in a Sprint data coverage area, Data Roaming periodically attempts to acquire a data connection. Your battery can be significantly drained during scanning. Turn off your Data Roaming when you are not actively using a data connection to preserve battery life.</info>
            <info title="Mobile Settings" action="function" uri="setting">View wireless &amp; network settings</info>
            <info title="Test 3G" action="function" uri="3g_test">Touch to start test.</info>
        </diagnostic>
        <diagnostic key="wimax" title="4G">
            <string name="status.enabled">Turned on.</string>
            <string name="status.disabled">Turned off.</string>
            <string name="status.disconnected">Not connected.</string>
            <string name="status.connected">Connected.</string>
            <string name="status.unavailable">Not available.</string>
            <string name="status.unavailable.airplanemode">Not available. Device is in airplane mode.</string>
            <string name="status.unavailable.inactivedevive">Not available. Device has not been activated.</string>
            <string name="status.test.start">Touch to start test.</string>
            <string name="status.test.running">Test running....</string>
            <string name="status.test.canceled">Test canceled.</string>
            <string name="status.test.successful">Test successful.</string>
            <string name="status.test.failed">Test failed.</string>
            <string name="status.test.failed.airplanemode">Test failed. Device is in airplane mode.</string>
            <string name="status.test.failed.inactivedevive">Test failed. Device has not been activated.</string>
            <string name="status.test.failed.wifion">Test failed. Wi-Fi is active network.</string>
            <string name="status.test.failed.onvoicecall">Test failed. Voice call is active.</string>
            <info title="Information">If you are not in 4G coverage your device periodically attempts to reacquire a 4G connection. Your battery can be significantly drained during scanning. Turn off your 4G radio until you return to a 4G coverage area to preserve battery life.</info>
            <info title="4G Settings" action="function" uri="setting">View settings for 4G</info>
            <info title="Test 4G" action="function" uri="4g_test">Touch to start test.</info>
        </diagnostic>
        <diagnostic key="wifi" title="Wi-Fi">
            <string name="status.unavailable">Not available.</string>
            <string name="status.enabled">Turned on and not connected.</string>
            <string name="status.disabled">Turned off.</string>
            <string name="status.connected">Turned on and connected.</string>
            <string name="status.connectedTo">Turned on and connected to %s.</string>
            <string name="status.disconnected">Turned on and not connected.</string>
            <string name="status.test.start">Touch to start test.</string>
            <string name="status.test.running">Test running....</string>
            <string name="status.test.canceled">Test canceled.</string>
            <string name="status.test.successful">Test successful.</string>
            <string name="status.test.failed">Test failed.</string>
            <string name="status.test.failed.airplanemode">Test failed. Device is in airplane mode.</string>
            <string name="status.test.failed.inactivedevive">Test failed. Device has not been activated.</string>
            <string name="status.test.failed.wifion">Test failed. Wi-Fi is active network.</string>
            <string name="status.test.failed.onvoicecall">Test failed. Voice call is active.</string>
            <info title="Information">If Wi-Fi is turned on but you are not using a Wi-Fi connection, your device looks for available Wi-Fi networks. Your battery can be significantly drained during scanning. Turn off your Wi-Fi radio when not in use to preserve battery life.</info>
            <info title="Wi-Fi Settings" action="function" uri="setting">View settings for Wi-Fi</info>
            <info title="Test Wi-Fi" action="function" uri="wifi_test">Touch to start test.</info>
        </diagnostic>
        <group key="other" title="Other Diagnostics" />
        <diagnostic key="camera" title="Camera">
            <string name="status.unavailable">Not available.</string>
            <string name="status.notfound">Last photo resolution could not be determined.</string>
            <string name="status.available">Last photo resolution: %1$d x %2$d.
Last photo file size: %3$s.</string>
            <string name="status.test.running">Test running....</string>
            <info title="Camera resolution settings">Camera settings for last photo taken.</info>
        </diagnostic>
        <diagnostic key="location" title="Location">
            <string name="status.disabled">Turned off.</string>
            <string name="status.enabled">Turned on.</string>
            <string name="status.enabled.gps">Turned on. Updating via GPS satellite.</string>
            <string name="status.enabled.net">Turned on. Updating via wireless network.</string>
            <string name="status.enabled.foundvia.gps">Turned on. Found via GPS satellite.</string>
            <string name="status.enabled.foundvia.net">Turned on. Found via wireless network.</string>
            <string name="status.test.info">Accurate within %3$s feet.
Latitude: %1$s
Longitude: %2$s</string>
            <string name="status.test.running">Test running....</string>
            <string name="status.test.failed">Your current location is temporarily unavailable.</string>
            <info title="Information">Your device is equipped with a Location feature for use in connection with location-based (GPS) services.</info>
            <info title="Location Settings" action="function" uri="setting">View settings for Location.</info>
        </diagnostic>
        <diagnostic key="bluetooth" title="Bluetooth">
            <string name="status.enabled">Turned on.</string>
            <string name="status.disabled">Turned off.</string>
            <string name="status.unavailable">Not available.</string>
            <string name="status.test.running">Test running....</string>
            <info title="Bluetooth Settings" action="function" uri="setting">View settings for Bluetooth</info>
        </diagnostic>
        <diagnostic key="internalStorage" title="Internal Device Storage">
            <string name="status.test.running">Test running....</string>
            <info title="Phone Storage Settings" action="function" uri="setting">View settings for device storage</info>
            <string name="info.using.total">%s used of %s.</string>
            <string name="info.using.image">Images using %s</string>
            <string name="info.using.audio">Audio using %s</string>
            <string name="info.using.video">Video using %s</string>
        </diagnostic>
        <diagnostic key="usb" title="USB Connection">
            <string name="status.available">Available.</string>
            <info title="USB Connection Settings" action="function" uri="setting">View settings for USB Connection.</info>
        </diagnostic>
        <diagnostic key="memory" title="Memory">
            <string name="status.available">%s available.</string>
            <info title="Memory Usage" action="function" uri="memory_usage">View current memory usage.</info>
        </diagnostic>
        <diagnostic key="sync" title="Sync">
            <string name="status.unavailable">Not available.</string>
            <string name="status.enabled">Auto-sync is enabled.</string>
            <string name="status.enabledCount">Auto-sync is enabled for %s accounts.</string>
            <string name="status.disabled">Auto-sync is disabled.</string>
            <string name="status.test.running">Test running....</string>
            <info title="Accounts &amp; sync Settings" action="function" uri="setting">View settings for accounts and sync.</info>
        </diagnostic>
        <diagnostic key="screen" title="Screen">
            <string name="status.unavailable">Not available.</string>
            <string name="status.available">Brightness: %1$s
Timeout: %2$s</string>
            <string name="status.test.running">Test running....</string>
            <string name="info.power.brightness.line">Brightness: %s (%s)</string>
            <string name="info.power.timeout.line">Timeout: %s (%s)</string>
            <info title="Display Settings" action="function" uri="setting">View settings for Display</info>
        </diagnostic>
    </diagnostics>
</spa>
