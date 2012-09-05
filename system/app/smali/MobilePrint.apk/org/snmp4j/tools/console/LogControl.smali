.class public Lorg/snmp4j/tools/console/LogControl;
.super Ljava/lang/Object;
.source "LogControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/tools/console/LogControl$LoggerListListener;
    }
.end annotation


# static fields
.field private static final COMMANDS:[[Ljava/lang/String; = null

.field private static final COMMAND_PARAMETER:Ljava/lang/String; = "#command[s<(set|list)>] +following[s] .."

.field private static final OPTIONS:Ljava/lang/String; = "+a[s{=MD5}<(MD5|SHA)>] +A[s] +b[i{=0}] -c[s{=public}] -bc[i{=0}] +u[s{securityName}] -t[l{timeout=5000}] -r[i{retries=0}] +l[o<\\n\\n[:\\n\\n]*>] +e[o<\\n\\n[:\\n\\n]*>] +E[o<\\n\\n[:\\n\\n]*>] +n[s] +Y[s] +y[s<(DES|3DES|AES|AES128|AES192|AES256)>] -v[s{version=3}<(1|2c|3)>] "

.field public static final SNMP4J_LOGGER_OIDS:[Lorg/snmp4j/smi/OID;


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-array v0, v6, [Lorg/snmp4j/smi/OID;

    new-instance v1, Lorg/snmp4j/smi/OID;

    const-string v2, "1.3.6.1.4.1.4976.10.1.1.1.1.2.2.1.3"

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/snmp4j/smi/OID;

    const-string v2, "1.3.6.1.4.1.4976.10.1.1.1.1.2.2.1.4"

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/snmp4j/smi/OID;

    const-string v2, "1.3.6.1.4.1.4976.10.1.1.1.1.2.2.1.6"

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    sput-object v0, Lorg/snmp4j/tools/console/LogControl;->SNMP4J_LOGGER_OIDS:[Lorg/snmp4j/smi/OID;

    .line 72
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "list"

    aput-object v2, v1, v3

    const-string v2, "+a[s{=MD5}<(MD5|SHA)>] +A[s] +b[i{=0}] -c[s{=public}] -bc[i{=0}] +u[s{securityName}] -t[l{timeout=5000}] -r[i{retries=0}] +l[o<\\n\\n[:\\n\\n]*>] +e[o<\\n\\n[:\\n\\n]*>] +E[o<\\n\\n[:\\n\\n]*>] +n[s] +Y[s] +y[s<(DES|3DES|AES|AES128|AES192|AES256)>] -v[s{version=3}<(1|2c|3)>] "

    aput-object v2, v1, v4

    const-string v2, "#command[s<list>] #address[s<(udp|tcp):.*[/[0-9]+]?>] +filter[s]"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "set"

    aput-object v2, v1, v3

    const-string v2, "+a[s{=MD5}<(MD5|SHA)>] +A[s] +b[i{=0}] -c[s{=public}] -bc[i{=0}] +u[s{securityName}] -t[l{timeout=5000}] -r[i{retries=0}] +l[o<\\n\\n[:\\n\\n]*>] +e[o<\\n\\n[:\\n\\n]*>] +E[o<\\n\\n[:\\n\\n]*>] +n[s] +Y[s] +y[s<(DES|3DES|AES|AES128|AES192|AES256)>] -v[s{version=3}<(1|2c|3)>] "

    aput-object v2, v1, v4

    const-string v2, "#command[s<set>] #address[s<(udp|tcp):.*[/[0-9]+]?>] #logger[s] #level[s<(NONE|OFF|ALL|TRACE|DEBUG|INFO|WARN|ERROR|FATAL)>]"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "help"

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, "#command[s<help>] +subject[s<list|set>]"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lorg/snmp4j/tools/console/LogControl;->COMMANDS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    .line 98
    return-void
.end method

.method private declared-synchronized listLoggers(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/util/PDUFactory;)V
    .registers 13
    .parameter "snmp"
    .parameter "target"
    .parameter "pduFactory"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/snmp4j/util/TableUtils;

    invoke-direct {v0, p1, p3}, Lorg/snmp4j/util/TableUtils;-><init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V

    .line 240
    .local v0, tableUtils:Lorg/snmp4j/util/TableUtils;
    const/4 v5, 0x0

    .line 241
    .local v5, lowerBound:Lorg/snmp4j/smi/OID;
    const/4 v6, 0x0

    .line 242
    .local v6, upperBound:Lorg/snmp4j/smi/OID;
    iget-object v1, p0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    const-string v2, "filter"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 243
    .local v7, filter:Ljava/lang/String;
    if-eqz v7, :cond_23

    .line 244
    new-instance v8, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v8, v7}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    .line 245
    .local v8, filterString:Lorg/snmp4j/smi/OctetString;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/snmp4j/smi/OctetString;->toSubIndex(Z)Lorg/snmp4j/smi/OID;

    move-result-object v5

    .line 246
    invoke-virtual {v5}, Lorg/snmp4j/smi/OID;->nextPeer()Lorg/snmp4j/smi/OID;

    move-result-object v6

    .line 248
    .end local v8           #filterString:Lorg/snmp4j/smi/OctetString;
    :cond_23
    new-instance v3, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;

    invoke-direct {v3, p0}, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;-><init>(Lorg/snmp4j/tools/console/LogControl;)V

    .line 249
    .local v3, lll:Lorg/snmp4j/tools/console/LogControl$LoggerListListener;
    sget-object v2, Lorg/snmp4j/tools/console/LogControl;->SNMP4J_LOGGER_OIDS:[Lorg/snmp4j/smi/OID;

    move-object v1, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lorg/snmp4j/util/TableUtils;->getTable(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V

    .line 251
    :goto_2f
    invoke-virtual {v3}, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;->isFinished()Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3d

    move-result v1

    if-nez v1, :cond_3b

    .line 253
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3d
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2f

    .line 255
    :catch_39
    move-exception v1

    goto :goto_2f

    .line 258
    :cond_3b
    monitor-exit p0

    return-void

    .line 239
    .end local v0           #tableUtils:Lorg/snmp4j/util/TableUtils;
    .end local v3           #lll:Lorg/snmp4j/tools/console/LogControl$LoggerListListener;
    .end local v5           #lowerBound:Lorg/snmp4j/smi/OID;
    .end local v6           #upperBound:Lorg/snmp4j/smi/OID;
    .end local v7           #filter:Ljava/lang/String;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    .line 305
    :try_start_1
    const-string v5, "+a[s{=MD5}<(MD5|SHA)>] +A[s] +b[i{=0}] -c[s{=public}] -bc[i{=0}] +u[s{securityName}] -t[l{timeout=5000}] -r[i{retries=0}] +l[o<\\n\\n[:\\n\\n]*>] +e[o<\\n\\n[:\\n\\n]*>] +E[o<\\n\\n[:\\n\\n]*>] +n[s] +Y[s] +y[s<(DES|3DES|AES|AES128|AES192|AES256)>] -v[s{version=3}<(1|2c|3)>] "

    sget-object v6, Lorg/snmp4j/tools/console/LogControl;->COMMANDS:[[Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lorg/snmp4j/util/ArgumentParser;->selectCommand([Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, commandSet:[Ljava/lang/String;
    if-nez v1, :cond_12

    .line 308
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printUsage()V

    .line 309
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 311
    :cond_12
    new-instance v3, Lorg/snmp4j/util/ArgumentParser;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v5, v6}, Lorg/snmp4j/util/ArgumentParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v3, parser:Lorg/snmp4j/util/ArgumentParser;
    invoke-virtual {v3, p0}, Lorg/snmp4j/util/ArgumentParser;->parse([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 315
    .local v0, commandLineParameters:Ljava/util/Map;
    new-instance v2, Lorg/snmp4j/tools/console/LogControl;

    invoke-direct {v2, v0}, Lorg/snmp4j/tools/console/LogControl;-><init>(Ljava/util/Map;)V

    .line 316
    .local v2, logcontrol:Lorg/snmp4j/tools/console/LogControl;
    invoke-virtual {v2}, Lorg/snmp4j/tools/console/LogControl;->run()V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_29} :catch_2a

    .line 322
    .end local v0           #commandLineParameters:Ljava/util/Map;
    .end local v1           #commandSet:[Ljava/lang/String;
    .end local v2           #logcontrol:Lorg/snmp4j/tools/console/LogControl;
    .end local v3           #parser:Lorg/snmp4j/util/ArgumentParser;
    :goto_29
    return-void

    .line 318
    :catch_2a
    move-exception v4

    .line 319
    .local v4, pex:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_29
.end method

.method private static printHelpUsage()V
    .registers 2

    .prologue
    .line 384
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " help [COMMAND]                  Print usage help for the specified command."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private static printListUsage()V
    .registers 2

    .prologue
    .line 377
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " list <ADDRESS> [FILTER]         List logger configuration for the agent at"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 ADDRESS (e.g. \'udp:localhost/161\') with"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 for all logger names that contain start with"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 the optional parameter string FILTER."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private static printOptions()V
    .registers 2

    .prologue
    .line 338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "valid <OPTIONS> are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -a  authProtocol      Sets the authentication protocol used to"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        authenticate SNMPv3 messages. Valid values are"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        MD5 and SHA."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -A  authPassphrase    Sets the authentication pass phrase for authenticated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        SNMPv3 messages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -bc bootCounter       The boot counter to be used (default is 0)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -c  community         The SNMPv1/v2c community to use (default is \'public\')"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -e  engineID          Sets the authoritative engine ID of the command"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        responder used for SNMPv3 request messages. If not"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        supplied, the engine ID will be discovered."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -E  contextEngineID   Sets the context engine ID used for the SNMPv3 scoped"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        PDU. The authoritative engine ID will be used for the"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        context engine ID, if the latter is not specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -l  localEngineID     Sets the local engine ID. This option can be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        used to avoid engine ID clashes through duplicate IDs"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        leading to usmStatsNotInTimeWindows reports."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -n  contextName       Sets the target context name for SNMPv3 messages. "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        Default is the empty string."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -u  securityName      The SNMPv3 security name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -t  timeout           SNMP timeout in milli-seconds (default is 5000)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -r  retries           SNMP retries (default is 0) "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -v  1|2c|3            The SNMP version (one of 1, 2c, or 3)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -y  privacyProtocol   Sets the privacy protocol to be used to encrypt"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        SNMPv3 messages. Valid values are DES, AES (AES128),"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        AES192, AES256, and 3DES(DESEDE)."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -Y  privacyPassphrase Sets the privacy pass phrase for encrypted"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                        SNMPv3 messages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private static printSetUsage()V
    .registers 2

    .prologue
    .line 369
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " set <ADDRESS> <LOGGER> <LEVEL>  Set a LOGGER to a new LEVEL at agent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 ADDRESS (e.g. \'udp:localhost/161\')."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 LOGGER is a fully qualified logger name and"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 LEVEL is one of NONE, OFF, ALL, TRACE, DEBUG,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                                 INFO, WARN, ERROR, or FATAL."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private static printUsage()V
    .registers 0

    .prologue
    .line 325
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printUsageHeader()V

    .line 326
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printHelpUsage()V

    .line 327
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printListUsage()V

    .line 328
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printSetUsage()V

    .line 329
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printOptions()V

    .line 330
    return-void
.end method

.method private static printUsageHeader()V
    .registers 2

    .prologue
    .line 333
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "LogControl <OPTIONS> <COMMAND> <PARAMETERS>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "where <COMMAND> is one of: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private setLevel(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/util/PDUFactory;)V
    .registers 15
    .parameter "snmp"
    .parameter "target"
    .parameter "pduFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-interface {p3, p2}, Lorg/snmp4j/util/PDUFactory;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v3

    .line 158
    .local v3, pdu:Lorg/snmp4j/PDU;
    new-instance v4, Lorg/snmp4j/smi/OID;

    sget-object v0, Lorg/snmp4j/tools/console/LogControl;->SNMP4J_LOGGER_OIDS:[Lorg/snmp4j/smi/OID;

    aget-object v0, v0, v2

    invoke-direct {v4, v0}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 159
    .local v4, levelOID:Lorg/snmp4j/smi/OID;
    iget-object v0, p0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    const-string v1, "logger"

    invoke-static {v0, v1, v2}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 160
    .local v5, logger:Ljava/lang/String;
    if-eqz v5, :cond_5b

    .line 161
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0, v5}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OctetString;->toSubIndex(Z)Lorg/snmp4j/smi/OID;

    move-result-object v6

    .line 162
    .local v6, loggerIndex:Lorg/snmp4j/smi/OID;
    iget-object v0, p0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    const-string v1, "level"

    invoke-static {v0, v1, v2}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .local v7, newLevel:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 164
    invoke-static {v7}, Lorg/snmp4j/log/LogLevel;->toLevel(Ljava/lang/String;)Lorg/snmp4j/log/LogLevel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/log/LogLevel;->getLevel()I

    move-result v9

    .line 165
    .local v9, level:I
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    new-instance v1, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v1, v9}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-direct {v0, v4, v1}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    invoke-virtual {v3, v0}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 167
    invoke-virtual {p1, v3, p2}, Lorg/snmp4j/Snmp;->set(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v8

    .line 168
    .local v8, response:Lorg/snmp4j/event/ResponseEvent;
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 169
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_b8

    .line 199
    .end local v6           #loggerIndex:Lorg/snmp4j/smi/OID;
    .end local v7           #newLevel:Ljava/lang/String;
    .end local v8           #response:Lorg/snmp4j/event/ResponseEvent;
    .end local v9           #level:I
    :cond_5b
    :goto_5b
    return-void

    .restart local v6       #loggerIndex:Lorg/snmp4j/smi/OID;
    .restart local v7       #newLevel:Ljava/lang/String;
    .restart local v8       #response:Lorg/snmp4j/event/ResponseEvent;
    .restart local v9       #level:I
    :sswitch_5c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 171
    invoke-direct/range {v0 .. v8}, Lorg/snmp4j/tools/console/LogControl;->verifyLoggerModification(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/PDU;Lorg/snmp4j/smi/OID;Ljava/lang/String;Lorg/snmp4j/smi/OID;Ljava/lang/String;Lorg/snmp4j/event/ResponseEvent;)V

    goto :goto_5b

    .line 177
    :sswitch_63
    invoke-virtual {v3}, Lorg/snmp4j/PDU;->clear()V

    .line 178
    new-instance v10, Lorg/snmp4j/smi/OID;

    sget-object v0, Lorg/snmp4j/tools/console/LogControl;->SNMP4J_LOGGER_OIDS:[Lorg/snmp4j/smi/OID;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {v10, v0}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 179
    .local v10, rowStatusOID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v10, v6}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 180
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    new-instance v1, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v1, v9}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-direct {v0, v4, v1}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    invoke-virtual {v3, v0}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 181
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    new-instance v1, Lorg/snmp4j/smi/Integer32;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-direct {v0, v10, v1}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    invoke-virtual {v3, v0}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 183
    invoke-virtual {p1, v3, p2}, Lorg/snmp4j/Snmp;->set(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v8

    .line 185
    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {v8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v0

    if-nez v0, :cond_a9

    .line 187
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Logger created successfully."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 190
    invoke-direct/range {v0 .. v8}, Lorg/snmp4j/tools/console/LogControl;->verifyLoggerModification(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/PDU;Lorg/snmp4j/smi/OID;Ljava/lang/String;Lorg/snmp4j/smi/OID;Ljava/lang/String;Lorg/snmp4j/event/ResponseEvent;)V

    goto :goto_5b

    .line 196
    .end local v10           #rowStatusOID:Lorg/snmp4j/smi/OID;
    :cond_b0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SET request timed out."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 169
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_5c
        0xb -> :sswitch_63
        0x12 -> :sswitch_63
    .end sparse-switch
.end method

.method private verifyLoggerModification(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/PDU;Lorg/snmp4j/smi/OID;Ljava/lang/String;Lorg/snmp4j/smi/OID;Ljava/lang/String;Lorg/snmp4j/event/ResponseEvent;)V
    .registers 17
    .parameter "snmp"
    .parameter "target"
    .parameter "pdu"
    .parameter "levelOID"
    .parameter "logger"
    .parameter "loggerIndex"
    .parameter "newLevel"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p3}, Lorg/snmp4j/PDU;->clear()V

    .line 207
    new-instance v0, Lorg/snmp4j/smi/OID;

    sget-object v5, Lorg/snmp4j/tools/console/LogControl;->SNMP4J_LOGGER_OIDS:[Lorg/snmp4j/smi/OID;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v0, v5}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 208
    .local v0, effLevelOID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v0, p6}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 209
    new-instance v5, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v5, p4}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {p3, v5}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 210
    new-instance v5, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v5, v0}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {p3, v5}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 211
    invoke-virtual {p1, p3, p2}, Lorg/snmp4j/Snmp;->get(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object p8

    .line 212
    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v3

    .line 213
    .local v3, respPDU:Lorg/snmp4j/PDU;
    if-eqz v3, :cond_ab

    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v5

    if-nez v5, :cond_ab

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/smi/VariableBinding;->isException()Z

    move-result v5

    if-nez v5, :cond_ab

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/smi/VariableBinding;->isException()Z

    move-result v5

    if-nez v5, :cond_ab

    .line 217
    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v2

    .line 218
    .local v2, resp:Lorg/snmp4j/PDU;
    new-instance v4, Lorg/snmp4j/log/LogLevel;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v5

    invoke-interface {v5}, Lorg/snmp4j/smi/Variable;->toInt()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    .line 219
    .local v4, setLevel:Lorg/snmp4j/log/LogLevel;
    new-instance v1, Lorg/snmp4j/log/LogLevel;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v5

    invoke-interface {v5}, Lorg/snmp4j/smi/Variable;->toInt()I

    move-result v5

    invoke-direct {v1, v5}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    .line 220
    .local v1, effectiveLevel:Lorg/snmp4j/log/LogLevel;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Set logger \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' level to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ". Now levels are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " (configured) and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " (effective)."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    .end local v1           #effectiveLevel:Lorg/snmp4j/log/LogLevel;
    .end local v2           #resp:Lorg/snmp4j/PDU;
    .end local v4           #setLevel:Lorg/snmp4j/log/LogLevel;
    :goto_aa
    return-void

    .line 225
    :cond_ab
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "SET request successfully sent, but verfication failed:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    if-nez v3, :cond_bc

    .line 227
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "GET request timed out."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_aa

    .line 229
    :cond_bc
    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v5

    if-eqz v5, :cond_d0

    .line 230
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v6

    invoke-static {v6}, Lorg/snmp4j/PDU;->toErrorStatusText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_aa

    .line 233
    :cond_d0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/snmp4j/PDU;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_aa
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    const-string v14, "command"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, command:Ljava/lang/String;
    const-string v13, "help"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    const-string v14, "subject"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 104
    .local v10, subject:Ljava/lang/String;
    if-nez v10, :cond_28

    .line 105
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printUsage()V

    .line 152
    .end local v10           #subject:Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 107
    .restart local v10       #subject:Ljava/lang/String;
    :cond_28
    const-string v13, "list"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 108
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printUsageHeader()V

    .line 109
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printListUsage()V

    .line 110
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printOptions()V

    goto :goto_27

    .line 112
    :cond_3a
    const-string v13, "set"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 113
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printUsageHeader()V

    .line 114
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printListUsage()V

    .line 115
    invoke-static {}, Lorg/snmp4j/tools/console/LogControl;->printOptions()V

    goto :goto_27

    .line 119
    .end local v10           #subject:Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x0

    .line 121
    .local v4, localTransport:Lorg/snmp4j/TransportMapping;
    :try_start_4d
    new-instance v5, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    new-instance v13, Lorg/snmp4j/smi/UdpAddress;

    const-string v14, "0.0.0.0/0"

    invoke-direct {v13, v14}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v13}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_59} :catch_f5

    .line 123
    .end local v4           #localTransport:Lorg/snmp4j/TransportMapping;
    .local v5, localTransport:Lorg/snmp4j/TransportMapping;
    :try_start_59
    new-instance v6, Lorg/snmp4j/MessageDispatcherImpl;

    invoke-direct {v6}, Lorg/snmp4j/MessageDispatcherImpl;-><init>()V

    .line 124
    .local v6, md:Lorg/snmp4j/MessageDispatcher;
    new-instance v8, Lorg/snmp4j/Snmp;

    invoke-direct {v8, v6, v5}, Lorg/snmp4j/Snmp;-><init>(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/TransportMapping;)V

    .line 125
    .local v8, snmp:Lorg/snmp4j/Snmp;
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v13

    invoke-virtual {v13}, Lorg/snmp4j/security/SecurityProtocols;->addDefaultProtocols()V

    .line 126
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    new-instance v13, Lorg/snmp4j/smi/OctetString;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "LogControl"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/snmp4j/mp/MPv3;->createLocalEngineID(Lorg/snmp4j/smi/OctetString;)[B

    move-result-object v13

    invoke-direct {v3, v13}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 129
    .local v3, localEngineID:Lorg/snmp4j/smi/OctetString;
    new-instance v13, Lorg/snmp4j/mp/MPv1;

    invoke-direct {v13}, Lorg/snmp4j/mp/MPv1;-><init>()V

    invoke-interface {v6, v13}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 130
    new-instance v13, Lorg/snmp4j/mp/MPv2c;

    invoke-direct {v13}, Lorg/snmp4j/mp/MPv2c;-><init>()V

    invoke-interface {v6, v13}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 131
    new-instance v12, Lorg/snmp4j/security/USM;

    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v3, v14}, Lorg/snmp4j/security/USM;-><init>(Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/smi/OctetString;I)V

    .line 134
    .local v12, usm:Lorg/snmp4j/security/USM;
    new-instance v13, Lorg/snmp4j/mp/MPv3;

    invoke-direct {v13, v12}, Lorg/snmp4j/mp/MPv3;-><init>(Lorg/snmp4j/security/USM;)V

    invoke-interface {v6, v13}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 136
    new-instance v9, Lorg/snmp4j/util/SnmpConfigurator;

    invoke-direct {v9}, Lorg/snmp4j/util/SnmpConfigurator;-><init>()V

    .line 137
    .local v9, snmpConfig:Lorg/snmp4j/util/SnmpConfigurator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    invoke-virtual {v9, v8, v13}, Lorg/snmp4j/util/SnmpConfigurator;->configure(Lorg/snmp4j/Snmp;Ljava/util/Map;)V

    .line 138
    invoke-virtual {v8}, Lorg/snmp4j/Snmp;->listen()V

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    invoke-virtual {v9, v13}, Lorg/snmp4j/util/SnmpConfigurator;->getTarget(Ljava/util/Map;)Lorg/snmp4j/Target;

    move-result-object v11

    .line 140
    .local v11, t:Lorg/snmp4j/Target;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/snmp4j/tools/console/LogControl;->parameters:Ljava/util/Map;

    invoke-virtual {v9, v13}, Lorg/snmp4j/util/SnmpConfigurator;->getPDUFactory(Ljava/util/Map;)Lorg/snmp4j/util/PDUFactory;

    move-result-object v7

    .line 141
    .local v7, pduFactory:Lorg/snmp4j/util/PDUFactory;
    const-string v13, "list"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 142
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v7}, Lorg/snmp4j/tools/console/LogControl;->listLoggers(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/util/PDUFactory;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_dd} :catch_df

    goto/16 :goto_27

    .line 148
    .end local v3           #localEngineID:Lorg/snmp4j/smi/OctetString;
    .end local v6           #md:Lorg/snmp4j/MessageDispatcher;
    .end local v7           #pduFactory:Lorg/snmp4j/util/PDUFactory;
    .end local v8           #snmp:Lorg/snmp4j/Snmp;
    .end local v9           #snmpConfig:Lorg/snmp4j/util/SnmpConfigurator;
    .end local v11           #t:Lorg/snmp4j/Target;
    .end local v12           #usm:Lorg/snmp4j/security/USM;
    :catch_df
    move-exception v2

    move-object v4, v5

    .line 149
    .end local v5           #localTransport:Lorg/snmp4j/TransportMapping;
    .local v2, ex:Ljava/io/IOException;
    .restart local v4       #localTransport:Lorg/snmp4j/TransportMapping;
    :goto_e1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_27

    .line 144
    .end local v2           #ex:Ljava/io/IOException;
    .end local v4           #localTransport:Lorg/snmp4j/TransportMapping;
    .restart local v3       #localEngineID:Lorg/snmp4j/smi/OctetString;
    .restart local v5       #localTransport:Lorg/snmp4j/TransportMapping;
    .restart local v6       #md:Lorg/snmp4j/MessageDispatcher;
    .restart local v7       #pduFactory:Lorg/snmp4j/util/PDUFactory;
    .restart local v8       #snmp:Lorg/snmp4j/Snmp;
    .restart local v9       #snmpConfig:Lorg/snmp4j/util/SnmpConfigurator;
    .restart local v11       #t:Lorg/snmp4j/Target;
    .restart local v12       #usm:Lorg/snmp4j/security/USM;
    :cond_e6
    :try_start_e6
    const-string v13, "set"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 145
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v7}, Lorg/snmp4j/tools/console/LogControl;->setLevel(Lorg/snmp4j/Snmp;Lorg/snmp4j/Target;Lorg/snmp4j/util/PDUFactory;)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_f3} :catch_df

    goto/16 :goto_27

    .line 148
    .end local v3           #localEngineID:Lorg/snmp4j/smi/OctetString;
    .end local v5           #localTransport:Lorg/snmp4j/TransportMapping;
    .end local v6           #md:Lorg/snmp4j/MessageDispatcher;
    .end local v7           #pduFactory:Lorg/snmp4j/util/PDUFactory;
    .end local v8           #snmp:Lorg/snmp4j/Snmp;
    .end local v9           #snmpConfig:Lorg/snmp4j/util/SnmpConfigurator;
    .end local v11           #t:Lorg/snmp4j/Target;
    .end local v12           #usm:Lorg/snmp4j/security/USM;
    .restart local v4       #localTransport:Lorg/snmp4j/TransportMapping;
    :catch_f5
    move-exception v2

    goto :goto_e1
.end method
