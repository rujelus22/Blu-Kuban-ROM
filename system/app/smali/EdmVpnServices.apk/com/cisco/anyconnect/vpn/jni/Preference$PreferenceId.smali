.class public final enum Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;
.super Ljava/lang/Enum;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferenceId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AllowCaptivePortalRemediation:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AllowLocalProxyConnections:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AllowVPNDisconnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AlwaysOn:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum ApplyLastVPNLocalResourceRules:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AuthenticationTimeout:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutoConnectOnStart:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutoReconnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutoReconnectBehavior:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutoServerSelectionImprovement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutoServerSelectionSuspendTime:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutoUpdate:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutomaticCertSelection:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum AutomaticVPNPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum CaptivePortalRemediationTimeout:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum CertificateStore:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum CertificateStoreOverride:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum ConnectFailurePolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum DeviceLockMaximumTimeoutMinutes:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum DeviceLockMinimumPasswordLength:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum DeviceLockPasswordComplexity:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum DeviceLockRequired:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum EnableAutomaticServerSelection:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum EnablePostSBLOnConnectScript:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum EnableScripting:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum LocalLanAccess:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum MinimizeOnConnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum PPPExclusion:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum PPPExclusionServerIP:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum ProxySettings:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum RSASecurIDIntegration:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum RetainVpnOnLogoff:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum SafeWordSofTokenIntegration:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum ShowPreConnectMessage:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum TerminateScriptOnNextEvent:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum TrustedDNSDomains:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum TrustedDNSServers:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum TrustedNetworkPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum UnknownPreference:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum UntrustedNetworkPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum UseStartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum UserEnforcement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum WindowsLogonEnforcement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public static final enum WindowsVPNEstablishment:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "CertificateStoreOverride"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->CertificateStoreOverride:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 9
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "CertificateStore"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->CertificateStore:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 10
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "ShowPreConnectMessage"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ShowPreConnectMessage:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutoConnectOnStart"

    invoke-direct {v0, v1, v6}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoConnectOnStart:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 12
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "MinimizeOnConnect"

    invoke-direct {v0, v1, v7}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->MinimizeOnConnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 13
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "LocalLanAccess"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->LocalLanAccess:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 14
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutoReconnect"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoReconnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 15
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutoReconnectBehavior"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoReconnectBehavior:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 16
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "UseStartBeforeLogon"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UseStartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 17
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutoUpdate"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoUpdate:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 18
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "RSASecurIDIntegration"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->RSASecurIDIntegration:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 19
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "WindowsLogonEnforcement"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->WindowsLogonEnforcement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 20
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "WindowsVPNEstablishment"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->WindowsVPNEstablishment:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 21
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "ProxySettings"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ProxySettings:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 22
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AllowLocalProxyConnections"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AllowLocalProxyConnections:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 23
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "PPPExclusion"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->PPPExclusion:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 24
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "PPPExclusionServerIP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->PPPExclusionServerIP:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 25
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutomaticVPNPolicy"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutomaticVPNPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 26
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "TrustedNetworkPolicy"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TrustedNetworkPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 27
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "UntrustedNetworkPolicy"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UntrustedNetworkPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 28
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "TrustedDNSDomains"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TrustedDNSDomains:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 29
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "TrustedDNSServers"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TrustedDNSServers:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 30
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AlwaysOn"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AlwaysOn:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 31
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "ConnectFailurePolicy"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ConnectFailurePolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 32
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AllowCaptivePortalRemediation"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AllowCaptivePortalRemediation:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 33
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "CaptivePortalRemediationTimeout"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->CaptivePortalRemediationTimeout:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 34
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "ApplyLastVPNLocalResourceRules"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ApplyLastVPNLocalResourceRules:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 35
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AllowVPNDisconnect"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AllowVPNDisconnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 36
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "EnableScripting"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->EnableScripting:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 37
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "TerminateScriptOnNextEvent"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TerminateScriptOnNextEvent:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 38
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "EnablePostSBLOnConnectScript"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->EnablePostSBLOnConnectScript:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 39
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutomaticCertSelection"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutomaticCertSelection:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 40
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "RetainVpnOnLogoff"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->RetainVpnOnLogoff:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 41
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "UserEnforcement"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UserEnforcement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 42
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "DeviceLockRequired"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockRequired:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 43
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "DeviceLockMaximumTimeoutMinutes"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockMaximumTimeoutMinutes:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 44
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "DeviceLockMinimumPasswordLength"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockMinimumPasswordLength:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 45
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "DeviceLockPasswordComplexity"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockPasswordComplexity:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 46
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "EnableAutomaticServerSelection"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->EnableAutomaticServerSelection:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 47
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutoServerSelectionImprovement"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoServerSelectionImprovement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 48
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AutoServerSelectionSuspendTime"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoServerSelectionSuspendTime:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 49
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "AuthenticationTimeout"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AuthenticationTimeout:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 50
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "SafeWordSofTokenIntegration"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->SafeWordSofTokenIntegration:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 51
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    const-string v1, "UnknownPreference"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UnknownPreference:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 5
    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->CertificateStoreOverride:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->CertificateStore:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ShowPreConnectMessage:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoConnectOnStart:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->MinimizeOnConnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->LocalLanAccess:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoReconnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoReconnectBehavior:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UseStartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoUpdate:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->RSASecurIDIntegration:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->WindowsLogonEnforcement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->WindowsVPNEstablishment:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ProxySettings:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AllowLocalProxyConnections:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->PPPExclusion:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->PPPExclusionServerIP:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutomaticVPNPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TrustedNetworkPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UntrustedNetworkPolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TrustedDNSDomains:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TrustedDNSServers:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AlwaysOn:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ConnectFailurePolicy:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AllowCaptivePortalRemediation:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->CaptivePortalRemediationTimeout:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ApplyLastVPNLocalResourceRules:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AllowVPNDisconnect:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->EnableScripting:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->TerminateScriptOnNextEvent:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->EnablePostSBLOnConnectScript:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutomaticCertSelection:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->RetainVpnOnLogoff:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UserEnforcement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockRequired:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockMaximumTimeoutMinutes:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockMinimumPasswordLength:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->DeviceLockPasswordComplexity:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->EnableAutomaticServerSelection:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoServerSelectionImprovement:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AutoServerSelectionSuspendTime:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->AuthenticationTimeout:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->SafeWordSofTokenIntegration:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->UnknownPreference:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;
    .registers 2
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    return-object v0
.end method
