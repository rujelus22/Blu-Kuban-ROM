.class public Lorg/snmp4j/util/SnmpConfigurator;
.super Ljava/lang/Object;
.source "SnmpConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;
    }
.end annotation


# static fields
.field public static final F_ADDRESS:Ljava/lang/String; = "s<(udp|tcp):.*[/[0-9]+]?>"

.field public static final F_AUTHORITATIVE_ENGINE_ID:Ljava/lang/String; = "o<\\n\\n[:\\n\\n]*>"

.field public static final F_AUTH_PASSPHRASE:Ljava/lang/String; = "s<.*>"

.field public static final F_AUTH_PROTOCOL:Ljava/lang/String; = "s<(MD5|SHA)>"

.field public static final F_BOOT_COUNTER:Ljava/lang/String; = "i{=0}"

.field public static final F_COMMUNITY:Ljava/lang/String; = "s{=public}"

.field public static final F_CONTEXT_ENGINE_ID:Ljava/lang/String; = "o<\\n\\n[:\\n\\n]*>"

.field public static final F_CONTEXT_NAME:Ljava/lang/String; = "s{=}"

.field public static final F_LOCAL_ENGINE_ID:Ljava/lang/String; = "o<\\n\\n[:\\n\\n]*>"

.field public static final F_MAX_REPETITIONS:Ljava/lang/String; = "i{=10}"

.field public static final F_NON_REPEATERS:Ljava/lang/String; = "i{=0}"

.field public static final F_OPERATION:Ljava/lang/String; = "s<(?i)(GET|GETNEXT|GETBULK|TRAP|NOTIFICATION|SET|INFORM)>"

.field public static final F_PRIV_PASSPHRASE:Ljava/lang/String; = "s<.*>"

.field public static final F_PRIV_PROTOCOL:Ljava/lang/String; = "s<(DES|3DES|AES|AES128|AES192|AES256)>"

.field public static final F_RETRIES:Ljava/lang/String; = "i"

.field public static final F_SECURITY_NAME:Ljava/lang/String; = "s"

.field public static final F_SEC_LEVEL:Ljava/lang/String; = "i"

.field public static final F_TIMEOUT:Ljava/lang/String; = "l"

.field public static final F_TRAPV1_AGENT_ADDR:Ljava/lang/String; = "s{=0.0.0.0}<\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}>"

.field public static final F_TRAPV1_ENTERPRISE:Ljava/lang/String; = "s{=0.0}<([a-zA-Z\\-0-9]*:)?[0-9a-zA-Z\\-\\.]*>"

.field public static final F_TRAPV1_GENERIC_ID:Ljava/lang/String; = "i{=0}"

.field public static final F_TRAPV1_SPECIFIC_ID:Ljava/lang/String; = "i{=0}"

.field public static final F_TRAP_OID:Ljava/lang/String; = "s{=1.3.6.1.6.3.1.1.5.1}<([a-zA-Z\\-0-9]*:)?[0-9a-zA-Z\\-\\.]*>"

.field public static final F_TRAP_UPTIME:Ljava/lang/String; = "l{=0}"

.field public static final F_VERSION:Ljava/lang/String; = "s<1|2c|3>"

.field public static final O_ADDRESS:Ljava/lang/String; = "address"

.field public static final O_AUTHORITATIVE_ENGINE_ID:Ljava/lang/String; = "e"

.field public static final O_AUTH_PASSPHRASE:Ljava/lang/String; = "A"

.field public static final O_AUTH_PROTOCOL:Ljava/lang/String; = "a"

.field public static final O_BOOT_COUNTER:Ljava/lang/String; = "bc"

.field public static final O_COMMUNITY:Ljava/lang/String; = "c"

.field public static final O_CONTEXT_ENGINE_ID:Ljava/lang/String; = "E"

.field public static final O_CONTEXT_NAME:Ljava/lang/String; = "n"

.field public static final O_LOCAL_ENGINE_ID:Ljava/lang/String; = "l"

.field public static final O_MAX_REPETITIONS:Ljava/lang/String; = "Cr"

.field public static final O_NON_REPEATERS:Ljava/lang/String; = "Cn"

.field public static final O_OPERATION:Ljava/lang/String; = "o"

.field public static final O_PRIV_PASSPHRASE:Ljava/lang/String; = "Y"

.field public static final O_PRIV_PROTOCOL:Ljava/lang/String; = "y"

.field public static final O_RETRIES:Ljava/lang/String; = "r"

.field public static final O_SECURITY_NAME:Ljava/lang/String; = "u"

.field public static final O_SEC_LEVEL:Ljava/lang/String; = "sl"

.field public static final O_TIMEOUT:Ljava/lang/String; = "t"

.field public static final O_TRAPV1_AGENT_ADDR:Ljava/lang/String; = "Ta"

.field public static final O_TRAPV1_ENTERPRISE:Ljava/lang/String; = "Te"

.field public static final O_TRAPV1_GENERIC_ID:Ljava/lang/String; = "Tg"

.field public static final O_TRAPV1_SPECIFIC_ID:Ljava/lang/String; = "Ts"

.field public static final O_TRAP_OID:Ljava/lang/String; = "To"

.field public static final O_TRAP_UPTIME:Ljava/lang/String; = "Tu"

.field public static final O_VERSION:Ljava/lang/String; = "v"

.field public static final P_ADDRESS:Ljava/lang/String; = "org.snmp4j.arg.address"

.field public static final P_AUTHORITATIVE_ENGINE_ID:Ljava/lang/String; = "org.snmp4j.arg.authoritativeEngineID"

.field public static final P_AUTH_PASSPHRASE:Ljava/lang/String; = "org.snmp4j.arg.authPassphrase"

.field public static final P_AUTH_PROTOCOL:Ljava/lang/String; = "org.snmp4j.arg.authProtocol"

.field public static final P_BOOT_COUNTER:Ljava/lang/String; = "org.snmp4j.arg.bootCounter"

.field public static final P_COMMUNITY:Ljava/lang/String; = "org.snmp4j.arg.community"

.field public static final P_CONTEXT_ENGINE_ID:Ljava/lang/String; = "org.snmp4j.arg.contextEngineID"

.field public static final P_CONTEXT_NAME:Ljava/lang/String; = "org.snmp4j.arg.contextName"

.field public static final P_LOCAL_ENGINE_ID:Ljava/lang/String; = "org.snmp4j.arg.localEngineID"

.field public static final P_MAX_REPETITIONS:Ljava/lang/String; = "org.snmp4j.arg.maxRepetitions"

.field public static final P_NON_REPEATERS:Ljava/lang/String; = "org.snmp4j.arg.nonRepeaters"

.field public static final P_OPERATION:Ljava/lang/String; = "org.snmp4j.arg.operation"

.field public static final P_PRIV_PASSPHRASE:Ljava/lang/String; = "org.snmp4j.arg.privPassphrase"

.field public static final P_PRIV_PROTOCOL:Ljava/lang/String; = "org.snmp4j.arg.privProtocol"

.field public static final P_RETRIES:Ljava/lang/String; = "org.snmp4j.arg.retries"

.field public static final P_SECURITY_NAME:Ljava/lang/String; = "org.snmp4j.arg.securityName"

.field public static final P_SEC_LEVEL:Ljava/lang/String; = "org.snmp4j.arg.securityLevel"

.field public static final P_TIMEOUT:Ljava/lang/String; = "org.snmp4j.arg.timeout"

.field public static final P_TRAPV1_AGENT_ADDR:Ljava/lang/String; = "org.snmp4j.arg.trapv1.agentAddr"

.field public static final P_TRAPV1_ENTERPRISE:Ljava/lang/String; = "org.snmp4j.arg.trap.trapv1.enterprise"

.field public static final P_TRAPV1_GENERIC_ID:Ljava/lang/String; = "org.snmp4j.arg.trap.trapv1.genericID"

.field public static final P_TRAPV1_SPECIFIC_ID:Ljava/lang/String; = "org.snmp4j.arg.trap.trapv1.specificID"

.field public static final P_TRAP_OID:Ljava/lang/String; = "org.snmp4j.arg.trap.trapOID"

.field public static final P_TRAP_UPTIME:Ljava/lang/String; = "org.snmp4j.arg.trap.trapUpTime"

.field public static final P_VERSION:Ljava/lang/String; = "org.snmp4j.arg.version"


# instance fields
.field private oAddress:Ljava/lang/String;

.field private oAgentAddr:Ljava/lang/String;

.field private oAuthPassphrase:Ljava/lang/String;

.field private oAuthProtocol:Ljava/lang/String;

.field private oAuthoritativeEngineID:Ljava/lang/String;

.field private oBootCounter:Ljava/lang/String;

.field private oCommunity:Ljava/lang/String;

.field private oContextEngineID:Ljava/lang/String;

.field private oContextName:Ljava/lang/String;

.field private oEnterprise:Ljava/lang/String;

.field private oGenericID:Ljava/lang/String;

.field private oLocalEngineID:Ljava/lang/String;

.field private oMaxRepetitions:Ljava/lang/String;

.field private oNonRepeaters:Ljava/lang/String;

.field private oOperation:Ljava/lang/String;

.field private oPrivPassphrase:Ljava/lang/String;

.field private oPrivProtocol:Ljava/lang/String;

.field private oRetries:Ljava/lang/String;

.field private oSecLevel:Ljava/lang/String;

.field private oSecurityName:Ljava/lang/String;

.field private oSpecificID:Ljava/lang/String;

.field private oTimeout:Ljava/lang/String;

.field private oTrapOID:Ljava/lang/String;

.field private oTrapSysUpTime:Ljava/lang/String;

.field private oVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 194
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0}, Lorg/snmp4j/util/SnmpConfigurator;-><init>(Ljava/util/Properties;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 4
    .parameter "props"

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v0, "org.snmp4j.arg.version"

    const-string v1, "v"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oVersion:Ljava/lang/String;

    .line 199
    const-string v0, "org.snmp4j.arg.localEngineID"

    const-string v1, "l"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oLocalEngineID:Ljava/lang/String;

    .line 200
    const-string v0, "org.snmp4j.arg.retries"

    const-string v1, "r"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oRetries:Ljava/lang/String;

    .line 201
    const-string v0, "org.snmp4j.arg.timeout"

    const-string v1, "t"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oTimeout:Ljava/lang/String;

    .line 202
    const-string v0, "org.snmp4j.arg.address"

    const-string v1, "address"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oAddress:Ljava/lang/String;

    .line 203
    const-string v0, "org.snmp4j.arg.community"

    const-string v1, "c"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oCommunity:Ljava/lang/String;

    .line 204
    const-string v0, "org.snmp4j.arg.securityName"

    const-string v1, "u"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oSecurityName:Ljava/lang/String;

    .line 205
    const-string v0, "org.snmp4j.arg.authoritativeEngineID"

    const-string v1, "e"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthoritativeEngineID:Ljava/lang/String;

    .line 206
    const-string v0, "org.snmp4j.arg.authPassphrase"

    const-string v1, "A"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthPassphrase:Ljava/lang/String;

    .line 207
    const-string v0, "org.snmp4j.arg.authProtocol"

    const-string v1, "a"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthProtocol:Ljava/lang/String;

    .line 208
    const-string v0, "org.snmp4j.arg.privPassphrase"

    const-string v1, "Y"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oPrivPassphrase:Ljava/lang/String;

    .line 209
    const-string v0, "org.snmp4j.arg.privProtocol"

    const-string v1, "y"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oPrivProtocol:Ljava/lang/String;

    .line 210
    const-string v0, "org.snmp4j.arg.operation"

    const-string v1, "o"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oOperation:Ljava/lang/String;

    .line 211
    const-string v0, "org.snmp4j.arg.maxRepetitions"

    const-string v1, "Cr"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oMaxRepetitions:Ljava/lang/String;

    .line 212
    const-string v0, "org.snmp4j.arg.nonRepeaters"

    const-string v1, "Cn"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oNonRepeaters:Ljava/lang/String;

    .line 213
    const-string v0, "org.snmp4j.arg.bootCounter"

    const-string v1, "bc"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oBootCounter:Ljava/lang/String;

    .line 214
    const-string v0, "org.snmp4j.arg.contextName"

    const-string v1, "n"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oContextName:Ljava/lang/String;

    .line 215
    const-string v0, "org.snmp4j.arg.contextEngineID"

    const-string v1, "E"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oContextEngineID:Ljava/lang/String;

    .line 216
    const-string v0, "org.snmp4j.arg.securityLevel"

    const-string v1, "sl"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oSecLevel:Ljava/lang/String;

    .line 217
    const-string v0, "org.snmp4j.arg.trapv1.agentAddr"

    const-string v1, "Ta"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oAgentAddr:Ljava/lang/String;

    .line 218
    const-string v0, "org.snmp4j.arg.trap.trapOID"

    const-string v1, "To"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oTrapOID:Ljava/lang/String;

    .line 219
    const-string v0, "org.snmp4j.arg.trap.trapUpTime"

    const-string v1, "Tu"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oTrapSysUpTime:Ljava/lang/String;

    .line 220
    const-string v0, "org.snmp4j.arg.trap.trapv1.specificID"

    const-string v1, "Ts"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oSpecificID:Ljava/lang/String;

    .line 221
    const-string v0, "org.snmp4j.arg.trap.trapv1.genericID"

    const-string v1, "Tg"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oGenericID:Ljava/lang/String;

    .line 222
    const-string v0, "org.snmp4j.arg.trap.trapv1.enterprise"

    const-string v1, "Te"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oEnterprise:Ljava/lang/String;

    .line 223
    return-void
.end method

.method static access$000(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oOperation:Ljava/lang/String;

    return-object v0
.end method

.method static access$100(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oTrapSysUpTime:Ljava/lang/String;

    return-object v0
.end method

.method static access$1000(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oNonRepeaters:Ljava/lang/String;

    return-object v0
.end method

.method static access$200(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oTrapOID:Ljava/lang/String;

    return-object v0
.end method

.method static access$300(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oAgentAddr:Ljava/lang/String;

    return-object v0
.end method

.method static access$400(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oGenericID:Ljava/lang/String;

    return-object v0
.end method

.method static access$500(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oSpecificID:Ljava/lang/String;

    return-object v0
.end method

.method static access$600(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oEnterprise:Ljava/lang/String;

    return-object v0
.end method

.method static access$700(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oContextEngineID:Ljava/lang/String;

    return-object v0
.end method

.method static access$800(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oContextName:Ljava/lang/String;

    return-object v0
.end method

.method static access$900(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator;->oMaxRepetitions:Ljava/lang/String;

    return-object v0
.end method

.method public static createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;
    .registers 5
    .parameter "s"
    .parameter "defaultString"

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, octetString:Lorg/snmp4j/smi/OctetString;
    if-nez p0, :cond_4

    .line 383
    move-object p0, p1

    .line 385
    :cond_4
    if-eqz p0, :cond_1a

    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 386
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v1, v2}, Lorg/snmp4j/smi/OctetString;->fromHexString(Ljava/lang/String;C)Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    .line 391
    :cond_19
    :goto_19
    return-object v0

    .line 388
    :cond_1a
    if-eqz p0, :cond_19

    .line 389
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    .end local v0           #octetString:Lorg/snmp4j/smi/OctetString;
    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    .restart local v0       #octetString:Lorg/snmp4j/smi/OctetString;
    goto :goto_19
.end method


# virtual methods
.method public configure(Lorg/snmp4j/Snmp;Ljava/util/Map;)V
    .registers 20
    .parameter "snmp"
    .parameter "settings"

    .prologue
    .line 226
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/Snmp;->getUSM()Lorg/snmp4j/security/USM;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 227
    const/4 v10, 0x0

    .line 228
    .local v10, engineBoots:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oBootCounter:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 230
    .local v9, bc:Ljava/lang/Integer;
    if-eqz v9, :cond_21

    .line 231
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 232
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/Snmp;->getUSM()Lorg/snmp4j/security/USM;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/snmp4j/security/USM;->setEngineBoots(I)V

    .line 234
    :cond_21
    const/4 v11, 0x0

    .line 235
    .local v11, engineTime:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oLocalEngineID:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v12

    .line 239
    .local v12, localEngineID:Lorg/snmp4j/smi/OctetString;
    if-nez v12, :cond_bc

    .line 240
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/Snmp;->getLocalEngineID()[B

    move-result-object v1

    if-nez v1, :cond_45

    .line 241
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->createLocalEngineID()[B

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v11}, Lorg/snmp4j/Snmp;->setLocalEngine([BII)V

    .line 248
    :cond_45
    :goto_45
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oSecurityName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 250
    .local v15, sn:Ljava/lang/String;
    if-eqz v15, :cond_bb

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthPassphrase:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 253
    .local v8, authPP:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oPrivPassphrase:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 255
    .local v14, privPP:Ljava/lang/String;
    const/4 v3, 0x0

    .line 256
    .local v3, authProtocol:Lorg/snmp4j/smi/OID;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthProtocol:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 258
    .local v7, authP:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/util/SnmpConfigurator;->oPrivProtocol:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 260
    .local v13, privP:Ljava/lang/String;
    const/4 v5, 0x0

    .line 261
    .local v5, privProtocol:Lorg/snmp4j/smi/OID;
    const-string v1, "MD5"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 262
    sget-object v3, Lorg/snmp4j/security/AuthMD5;->ID:Lorg/snmp4j/smi/OID;

    .line 267
    :cond_94
    :goto_94
    const-string v1, "DES"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 268
    sget-object v5, Lorg/snmp4j/security/PrivDES;->ID:Lorg/snmp4j/smi/OID;

    .line 282
    :cond_9e
    :goto_9e
    const/4 v1, 0x0

    invoke-static {v15, v1}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v2

    .line 283
    .local v2, un:Lorg/snmp4j/smi/OctetString;
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/Snmp;->getUSM()Lorg/snmp4j/security/USM;

    move-result-object v16

    new-instance v1, Lorg/snmp4j/security/UsmUser;

    const/4 v4, 0x0

    invoke-static {v8, v4}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Lorg/snmp4j/security/USM;->addUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V

    .line 290
    .end local v2           #un:Lorg/snmp4j/smi/OctetString;
    .end local v3           #authProtocol:Lorg/snmp4j/smi/OID;
    .end local v5           #privProtocol:Lorg/snmp4j/smi/OID;
    .end local v7           #authP:Ljava/lang/String;
    .end local v8           #authPP:Ljava/lang/String;
    .end local v9           #bc:Ljava/lang/Integer;
    .end local v10           #engineBoots:I
    .end local v11           #engineTime:I
    .end local v12           #localEngineID:Lorg/snmp4j/smi/OctetString;
    .end local v13           #privP:Ljava/lang/String;
    .end local v14           #privPP:Ljava/lang/String;
    .end local v15           #sn:Ljava/lang/String;
    :cond_bb
    return-void

    .line 246
    .restart local v9       #bc:Ljava/lang/Integer;
    .restart local v10       #engineBoots:I
    .restart local v11       #engineTime:I
    .restart local v12       #localEngineID:Lorg/snmp4j/smi/OctetString;
    :cond_bc
    invoke-virtual {v12}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v11}, Lorg/snmp4j/Snmp;->setLocalEngine([BII)V

    goto :goto_45

    .line 264
    .restart local v3       #authProtocol:Lorg/snmp4j/smi/OID;
    .restart local v5       #privProtocol:Lorg/snmp4j/smi/OID;
    .restart local v7       #authP:Ljava/lang/String;
    .restart local v8       #authPP:Ljava/lang/String;
    .restart local v13       #privP:Ljava/lang/String;
    .restart local v14       #privPP:Ljava/lang/String;
    .restart local v15       #sn:Ljava/lang/String;
    :cond_c6
    const-string v1, "SHA"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 265
    sget-object v3, Lorg/snmp4j/security/AuthSHA;->ID:Lorg/snmp4j/smi/OID;

    goto :goto_94

    .line 270
    :cond_d1
    const-string v1, "3DES"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 271
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->ID:Lorg/snmp4j/smi/OID;

    goto :goto_9e

    .line 273
    :cond_dc
    const-string v1, "AES"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    const-string v1, "AES128"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 274
    :cond_ec
    sget-object v5, Lorg/snmp4j/security/PrivAES128;->ID:Lorg/snmp4j/smi/OID;

    goto :goto_9e

    .line 276
    :cond_ef
    const-string v1, "AES192"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 277
    sget-object v5, Lorg/snmp4j/security/PrivAES192;->ID:Lorg/snmp4j/smi/OID;

    goto :goto_9e

    .line 279
    :cond_fa
    const-string v1, "AES256"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 280
    sget-object v5, Lorg/snmp4j/security/PrivAES256;->ID:Lorg/snmp4j/smi/OID;

    goto :goto_9e
.end method

.method public getPDUFactory(Ljava/util/Map;)Lorg/snmp4j/util/PDUFactory;
    .registers 3
    .parameter "settings"

    .prologue
    .line 293
    new-instance v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;

    invoke-direct {v0, p0, p1}, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;-><init>(Lorg/snmp4j/util/SnmpConfigurator;Ljava/util/Map;)V

    return-object v0
.end method

.method public getTarget(Ljava/util/Map;)Lorg/snmp4j/Target;
    .registers 18
    .parameter "settings"

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oVersion:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 299
    .local v13, version:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oCommunity:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "public"

    invoke-static {v14, v15}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    .line 304
    .local v3, community:Lorg/snmp4j/smi/OctetString;
    const-string v14, "1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    .line 305
    new-instance v8, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v8}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 306
    .local v8, t:Lorg/snmp4j/Target;
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Lorg/snmp4j/Target;->setVersion(I)V

    move-object v14, v8

    .line 307
    check-cast v14, Lorg/snmp4j/CommunityTarget;

    invoke-virtual {v14, v3}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 345
    :goto_37
    const/4 v5, 0x0

    .line 346
    .local v5, retries:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oRetries:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 347
    .local v4, r:Ljava/lang/Number;
    if-eqz v4, :cond_4b

    .line 348
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 350
    :cond_4b
    invoke-interface {v8, v5}, Lorg/snmp4j/Target;->setRetries(I)V

    .line 351
    const-wide/16 v9, 0x1388

    .line 352
    .local v9, timeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oTimeout:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    .line 353
    .local v11, to:Ljava/lang/Number;
    if-eqz v11, :cond_63

    .line 354
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 356
    :cond_63
    invoke-interface {v8, v9, v10}, Lorg/snmp4j/Target;->setTimeout(J)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oAddress:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    .local v1, addr:Ljava/lang/String;
    if-eqz v1, :cond_97

    .line 359
    const/16 v14, 0x2f

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gtz v14, :cond_90

    .line 360
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "/161"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_90
    invoke-static {v1}, Lorg/snmp4j/smi/GenericAddress;->parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;

    move-result-object v14

    invoke-interface {v8, v14}, Lorg/snmp4j/Target;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 364
    :cond_97
    return-object v8

    .line 309
    .end local v1           #addr:Ljava/lang/String;
    .end local v4           #r:Ljava/lang/Number;
    .end local v5           #retries:I
    .end local v8           #t:Lorg/snmp4j/Target;
    .end local v9           #timeout:J
    .end local v11           #to:Ljava/lang/Number;
    :cond_98
    const-string v14, "2c"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 310
    new-instance v8, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v8}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 311
    .restart local v8       #t:Lorg/snmp4j/Target;
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Lorg/snmp4j/Target;->setVersion(I)V

    move-object v14, v8

    .line 312
    check-cast v14, Lorg/snmp4j/CommunityTarget;

    invoke-virtual {v14, v3}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    goto :goto_37

    .line 315
    .end local v8           #t:Lorg/snmp4j/Target;
    :cond_b0
    new-instance v12, Lorg/snmp4j/UserTarget;

    invoke-direct {v12}, Lorg/snmp4j/UserTarget;-><init>()V

    .line 316
    .local v12, ut:Lorg/snmp4j/UserTarget;
    move-object v8, v12

    .line 317
    .restart local v8       #t:Lorg/snmp4j/Target;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthoritativeEngineID:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .local v2, ae:Ljava/lang/String;
    if-eqz v2, :cond_d1

    .line 320
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v14

    invoke-virtual {v14}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setAuthoritativeEngineID([B)V

    .line 322
    :cond_d1
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setSecurityModel(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oSecurityName:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 325
    .local v7, sn:Ljava/lang/String;
    if-eqz v7, :cond_ec

    .line 326
    const/4 v14, 0x0

    invoke-static {v7, v14}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setSecurityName(Lorg/snmp4j/smi/OctetString;)V

    .line 328
    :cond_ec
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oSecLevel:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 330
    .local v6, secLevel:Ljava/lang/Integer;
    if-nez v6, :cond_125

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oPrivPassphrase:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10d

    .line 332
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    goto/16 :goto_37

    .line 334
    :cond_10d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/util/SnmpConfigurator;->oAuthPassphrase:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11f

    .line 335
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    goto/16 :goto_37

    .line 338
    :cond_11f
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    goto/16 :goto_37

    .line 342
    :cond_125
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    goto/16 :goto_37
.end method
