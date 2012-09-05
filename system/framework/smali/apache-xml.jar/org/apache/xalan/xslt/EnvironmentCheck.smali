.class public Lorg/apache/xalan/xslt/EnvironmentCheck;
.super Ljava/lang/Object;
.source "EnvironmentCheck.java"


# static fields
.field public static final CLASS_NOTPRESENT:Ljava/lang/String; = "not-present"

.field public static final CLASS_PRESENT:Ljava/lang/String; = "present-unknown-version"

.field public static final ERROR:Ljava/lang/String; = "ERROR."

.field public static final ERROR_FOUND:Ljava/lang/String; = "At least one error was found!"

.field public static final FOUNDCLASSES:Ljava/lang/String; = "foundclasses."

.field public static final VERSION:Ljava/lang/String; = "version."

.field public static final WARNING:Ljava/lang/String; = "WARNING."

.field private static jarVersions:Ljava/util/Hashtable;


# instance fields
.field public jarNames:[Ljava/lang/String;

.field protected outWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/32 v4, 0xdcb5e

    .line 1184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    .line 1195
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd1468

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6b7ad

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6a77e

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x68109

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xab848

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb0022

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb2caa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_1_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd4f31

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd7833

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D11"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xe18da

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd290

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd38a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd408

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf0151

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf379c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xfbb7c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x91a3c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x901a7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x13f02b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x144463

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x148209

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x149309

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_5_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x135b9a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar-bundled from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x18764

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_2_0 or xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a7c4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_3_0, or xalan-j_2_3_1 from xml-commons-1.0.b2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a9f9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_0 from xml-commons RIVERCOURT1 branch"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1bc55

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_1 from factoryfinder-build of xml-commons RIVERCOURT1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e720

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e734

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons, tag: xml-commons-external_1_2_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2f69d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from head branch of xml-commons, tag: xml-commons-external_1_3_02"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x67a2a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from Xerces Tools releases - ERROR:DO NOT USE!"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x184a2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_1 from xerces-1..."

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16de37

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2 from xerces-1_2_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16a860

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_1 from xerces-1_2_1.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc466c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_2 from xerces-1_2_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16e06c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_0 from xerces-1_2_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x187e92

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_1 from xerces-1_3_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_1_0 from xerces-1_4.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b8285

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a77c2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from Xerces-J-bin.2.0.0.beta3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b99f3

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_D10,D11,D12 or xerces-1_4_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1ba633

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a3fe4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a6605

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_0 or xalan-j_2_3_1 from xerces-2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a615d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_D1 from xerces-2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xed4fb

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_0 from xerces-2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xcb063

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_1 from xerces-2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd9ba9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_5_D1 from xerces-2_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdabb4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xerces-2_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf6c76

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.6.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x125e94

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.7.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x926d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x94d4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x495b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x53cd

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60fa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_3_1 or xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60ff

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15f2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x213c5

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x6ef4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2db1a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc3bb2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2ff2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x822b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from crimson-1.1.1 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2548d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1584f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x32630

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.3 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x21406

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15a1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xalan.jar"

    aput-object v2, v0, v1

    const-string v1, "xalansamples.jar"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "xalanj1compat.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xalanservlet.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "serializer.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "xerces.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "xercesImpl.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "testxsl.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "crimson.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lotusxsl.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "jaxp.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "parser.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dom.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sax.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "xml.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "xml-apis.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "xsltc.jar"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    .line 1286
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 104
    new-instance v3, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 107
    .local v3, sendOutputTo:Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v5, p0

    if-ge v2, v5, :cond_5e

    .line 109
    const-string v5, "-out"

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 113
    array-length v5, p0

    if-ge v2, v5, :cond_56

    .line 117
    :try_start_1b
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/FileWriter;

    aget-object v6, p0, v2

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_2c

    .end local v3           #sendOutputTo:Ljava/io/PrintWriter;
    .local v4, sendOutputTo:Ljava/io/PrintWriter;
    move-object v3, v4

    .line 107
    .end local v4           #sendOutputTo:Ljava/io/PrintWriter;
    .restart local v3       #sendOutputTo:Ljava/io/PrintWriter;
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 119
    :catch_2c
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# WARNING: -out "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " threw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 127
    .end local v1           #e:Ljava/lang/Exception;
    :cond_56
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "# WARNING: -out argument should have a filename, output sent to console"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 133
    :cond_5e
    new-instance v0, Lorg/apache/xalan/xslt/EnvironmentCheck;

    invoke-direct {v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;-><init>()V

    .line 134
    .local v0, app:Lorg/apache/xalan/xslt/EnvironmentCheck;
    invoke-virtual {v0, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkEnvironment(Ljava/io/PrintWriter;)Z

    .line 135
    return-void
.end method


# virtual methods
.method public appendEnvironmentReport(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Hashtable;)V
    .registers 19
    .parameter "container"
    .parameter "factory"
    .parameter "h"

    .prologue
    .line 411
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 488
    :cond_4
    :goto_4
    return-void

    .line 418
    :cond_5
    :try_start_5
    const-string v12, "EnvironmentCheck"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 419
    .local v3, envCheckNode:Lorg/w3c/dom/Element;
    const-string v12, "version"

    const-string v13, "$Revision: 468646 $"

    invoke-interface {v3, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 422
    if-nez p3, :cond_5a

    .line 424
    const-string v12, "status"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 425
    .local v10, statusNode:Lorg/w3c/dom/Element;
    const-string v12, "result"

    const-string v13, "ERROR"

    invoke-interface {v10, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v12, "appendEnvironmentReport called with null Hashtable!"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 427
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_39

    goto :goto_4

    .line 483
    .end local v3           #envCheckNode:Lorg/w3c/dom/Element;
    .end local v10           #statusNode:Lorg/w3c/dom/Element;
    :catch_39
    move-exception v2

    .line 485
    .local v2, e2:Ljava/lang/Exception;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "appendEnvironmentReport threw: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 431
    .end local v2           #e2:Ljava/lang/Exception;
    .restart local v3       #envCheckNode:Lorg/w3c/dom/Element;
    :cond_5a
    const/4 v4, 0x0

    .line 433
    .local v4, errors:Z
    :try_start_5b
    const-string v12, "environment"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 434
    .local v5, hashNode:Lorg/w3c/dom/Element;
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 436
    invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 437
    .local v8, keys:Ljava/util/Enumeration;
    :goto_6a
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_f9

    .line 441
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 442
    .local v6, key:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_78} :catch_39

    .line 446
    .local v7, keyStr:Ljava/lang/String;
    :try_start_78
    const-string v12, "foundclasses."

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_90

    .line 448
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Vector;

    .line 450
    .local v11, v:Ljava/util/Vector;
    move-object/from16 v0, p2

    invoke-virtual {p0, v5, v0, v11, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v12

    or-int/2addr v4, v12

    .line 451
    goto :goto_6a

    .line 459
    .end local v11           #v:Ljava/util/Vector;
    :cond_90
    const-string v12, "ERROR."

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_99

    .line 461
    const/4 v4, 0x1

    .line 463
    :cond_99
    const-string v12, "item"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 464
    .local v9, node:Lorg/w3c/dom/Element;
    const-string v12, "key"

    invoke-interface {v9, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 466
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_ba} :catch_bb

    goto :goto_6a

    .line 469
    .end local v9           #node:Lorg/w3c/dom/Element;
    :catch_bb
    move-exception v1

    .line 471
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x1

    .line 472
    :try_start_bd
    const-string v12, "item"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 473
    .restart local v9       #node:Lorg/w3c/dom/Element;
    const-string v12, "key"

    invoke-interface {v9, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR. Reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " threw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 475
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_6a

    .line 479
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #key:Ljava/lang/Object;
    .end local v7           #keyStr:Ljava/lang/String;
    .end local v9           #node:Lorg/w3c/dom/Element;
    :cond_f9
    const-string v12, "status"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 480
    .restart local v10       #statusNode:Lorg/w3c/dom/Element;
    const-string v13, "result"

    if-eqz v4, :cond_10f

    const-string v12, "ERROR"

    :goto_107
    invoke-interface {v10, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_4

    .line 480
    :cond_10f
    const-string v12, "OK"
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_111} :catch_39

    goto :goto_107
.end method

.method protected appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z
    .registers 17
    .parameter "container"
    .parameter "factory"
    .parameter "v"
    .parameter "desc"

    .prologue
    const/4 v2, 0x0

    .line 509
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_b

    .line 546
    :cond_a
    return v2

    .line 512
    :cond_b
    const/4 v2, 0x0

    .line 514
    .local v2, errors:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_a

    .line 516
    invoke-virtual {p3, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Hashtable;

    .line 518
    .local v8, subhash:Ljava/util/Hashtable;
    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 519
    .local v6, keys:Ljava/util/Enumeration;
    :goto_1d
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 523
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 526
    .local v4, key:Ljava/lang/Object;
    :try_start_27
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 527
    .local v5, keyStr:Ljava/lang/String;
    const-string v9, "ERROR."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 529
    const/4 v2, 0x1

    .line 531
    :cond_34
    const-string v9, "foundJar"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 532
    .local v7, node:Lorg/w3c/dom/Element;
    const-string v9, "name"

    const/4 v10, 0x0

    const-string v11, "-"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v9, "desc"

    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 535
    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6b} :catch_6c

    goto :goto_1d

    .line 537
    .end local v5           #keyStr:Ljava/lang/String;
    .end local v7           #node:Lorg/w3c/dom/Element;
    :catch_6c
    move-exception v1

    .line 539
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 540
    const-string v9, "foundJar"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 541
    .restart local v7       #node:Lorg/w3c/dom/Element;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR. Reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 542
    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1d

    .line 514
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/Object;
    .end local v7           #node:Lorg/w3c/dom/Element;
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d
.end method

.method protected checkAntVersion(Ljava/util/Hashtable;)V
    .registers 12
    .parameter "h"

    .prologue
    .line 987
    if-nez p1, :cond_7

    .line 988
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 992
    .restart local p1
    :cond_7
    :try_start_7
    const-string v0, "org.apache.tools.ant.Main"

    .line 993
    .local v0, ANT_VERSION_CLASS:Ljava/lang/String;
    const-string v1, "getAntVersion"

    .line 994
    .local v1, ANT_VERSION_METHOD:Ljava/lang/String;
    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Class;

    .line 996
    .local v5, noArgs:[Ljava/lang/Class;
    const-string v7, "org.apache.tools.ant.Main"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 999
    .local v2, clazz:Ljava/lang/Class;
    const-string v7, "getAntVersion"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1000
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1002
    .local v6, returnValue:Ljava/lang/Object;
    const-string v7, "version.ant"

    check-cast v6, Ljava/lang/String;

    .end local v6           #returnValue:Ljava/lang/Object;
    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    .line 1008
    .end local v0           #ANT_VERSION_CLASS:Ljava/lang/String;
    .end local v1           #ANT_VERSION_METHOD:Ljava/lang/String;
    .end local v2           #clazz:Ljava/lang/Class;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #noArgs:[Ljava/lang/Class;
    :goto_2e
    return-void

    .line 1004
    :catch_2f
    move-exception v3

    .line 1006
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "version.ant"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e
.end method

.method protected checkDOMVersion(Ljava/util/Hashtable;)V
    .registers 18
    .parameter "h"

    .prologue
    .line 1022
    if-nez p1, :cond_7

    .line 1023
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    .line 1025
    .restart local p1
    :cond_7
    const-string v5, "org.w3c.dom.Document"

    .line 1026
    .local v5, DOM_LEVEL2_CLASS:Ljava/lang/String;
    const-string v6, "createElementNS"

    .line 1027
    .local v6, DOM_LEVEL2_METHOD:Ljava/lang/String;
    const-string v3, "org.w3c.dom.Node"

    .line 1028
    .local v3, DOM_LEVEL2WD_CLASS:Ljava/lang/String;
    const-string v4, "supported"

    .line 1029
    .local v4, DOM_LEVEL2WD_METHOD:Ljava/lang/String;
    const-string v1, "org.w3c.dom.Node"

    .line 1030
    .local v1, DOM_LEVEL2FD_CLASS:Ljava/lang/String;
    const-string v2, "isSupported"

    .line 1031
    .local v2, DOM_LEVEL2FD_METHOD:Ljava/lang/String;
    const/4 v13, 0x2

    new-array v12, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    .line 1036
    .local v12, twoStringArgs:[Ljava/lang/Class;
    :try_start_20
    const-string v13, "org.w3c.dom.Document"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    .line 1039
    .local v7, clazz:Ljava/lang/Class;
    const-string v13, "createElementNS"

    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1043
    .local v11, method:Ljava/lang/reflect/Method;
    const-string v13, "version.DOM"

    const-string v14, "2.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_8e

    .line 1049
    :try_start_3a
    const-string v13, "org.w3c.dom.Node"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    .line 1052
    const-string v13, "supported"

    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1054
    const-string v13, "ERROR.version.DOM.draftlevel"

    const-string v14, "2.0wd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string v13, "ERROR."

    const-string v14, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5d} :catch_5e

    .line 1087
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v11           #method:Ljava/lang/reflect/Method;
    :goto_5d
    return-void

    .line 1057
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v11       #method:Ljava/lang/reflect/Method;
    :catch_5e
    move-exception v9

    .line 1062
    .local v9, e2:Ljava/lang/Exception;
    :try_start_5f
    const-string v13, "org.w3c.dom.Node"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    .line 1065
    const-string v13, "isSupported"

    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1067
    const-string v13, "version.DOM.draftlevel"

    const-string v14, "2.0fd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_79} :catch_7a

    goto :goto_5d

    .line 1069
    :catch_7a
    move-exception v10

    .line 1071
    .local v10, e3:Ljava/lang/Exception;
    :try_start_7b
    const-string v13, "ERROR.version.DOM.draftlevel"

    const-string v14, "2.0unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v13, "ERROR."

    const-string v14, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8d} :catch_8e

    goto :goto_5d

    .line 1076
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v9           #e2:Ljava/lang/Exception;
    .end local v10           #e3:Ljava/lang/Exception;
    .end local v11           #method:Ljava/lang/reflect/Method;
    :catch_8e
    move-exception v8

    .line 1078
    .local v8, e:Ljava/lang/Exception;
    const-string v13, "ERROR.version.DOM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ERROR attempting to load DOM level 2 class: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v13, "ERROR."

    const-string v14, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d
.end method

.method public checkEnvironment(Ljava/io/PrintWriter;)Z
    .registers 5
    .parameter "pw"

    .prologue
    .line 165
    if-eqz p1, :cond_4

    .line 166
    iput-object p1, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    .line 169
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getEnvironmentHash()Ljava/util/Hashtable;

    move-result-object v1

    .line 172
    .local v1, hash:Ljava/util/Hashtable;
    invoke-virtual {p0, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->writeEnvironmentReport(Ljava/util/Hashtable;)Z

    move-result v0

    .line 174
    .local v0, environmentHasErrors:Z
    if-eqz v0, :cond_2d

    .line 178
    const-string v2, "# WARNING: Potential problems found in your environment!"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 179
    const-string v2, "#    Check any \'ERROR\' items above against the Xalan FAQs"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 180
    const-string v2, "#    to correct potential problems with your classes/jars"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 181
    const-string v2, "#    http://xml.apache.org/xalan-j/faq.html"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_2b

    .line 183
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 184
    :cond_2b
    const/4 v2, 0x0

    .line 191
    :goto_2c
    return v2

    .line 188
    :cond_2d
    const-string v2, "# YAHOO! Your environment seems to be OK."

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3b

    .line 190
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 191
    :cond_3b
    const/4 v2, 0x1

    goto :goto_2c
.end method

.method protected checkJAXPVersion(Ljava/util/Hashtable;)V
    .registers 11
    .parameter "h"

    .prologue
    .line 784
    if-nez p1, :cond_7

    .line 785
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 787
    .restart local p1
    :cond_7
    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Class;

    .line 788
    .local v5, noArgs:[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 792
    .local v2, clazz:Ljava/lang/Class;
    :try_start_b
    const-string v1, "javax.xml.parsers.DocumentBuilder"

    .line 793
    .local v1, JAXP1_CLASS:Ljava/lang/String;
    const-string v0, "getDOMImplementation"

    .line 795
    .local v0, JAXP11_METHOD:Ljava/lang/String;
    const-string v6, "javax.xml.parsers.DocumentBuilder"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 798
    const-string v6, "getDOMImplementation"

    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 801
    .local v4, method:Ljava/lang/reflect/Method;
    const-string v6, "version.JAXP"

    const-string v7, "1.1 or higher"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    .line 822
    .end local v0           #JAXP11_METHOD:Ljava/lang/String;
    .end local v1           #JAXP1_CLASS:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_27
    return-void

    .line 803
    :catch_28
    move-exception v3

    .line 805
    .local v3, e:Ljava/lang/Exception;
    if-eqz v2, :cond_3a

    .line 810
    const-string v6, "ERROR.version.JAXP"

    const-string v7, "1.0.1"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v6, "ERROR."

    const-string v7, "At least one error was found!"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 818
    :cond_3a
    const-string v6, "ERROR.version.JAXP"

    const-string v7, "not-present"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string v6, "ERROR."

    const-string v7, "At least one error was found!"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method

.method protected checkParserVersion(Ljava/util/Hashtable;)V
    .registers 12
    .parameter "h"

    .prologue
    .line 923
    if-nez p1, :cond_7

    .line 924
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 928
    .restart local p1
    :cond_7
    :try_start_7
    const-string v1, "org.apache.xerces.framework.Version"

    .line 930
    .local v1, XERCES1_VERSION_CLASS:Ljava/lang/String;
    const-string v7, "org.apache.xerces.framework.Version"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    .line 934
    .local v3, clazz:Ljava/lang/Class;
    const-string v7, "fVersion"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 935
    .local v5, f:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 937
    .local v6, parserVersion:Ljava/lang/String;
    const-string v7, "version.xerces1"

    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_5a

    .line 947
    .end local v1           #XERCES1_VERSION_CLASS:Ljava/lang/String;
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v5           #f:Ljava/lang/reflect/Field;
    .end local v6           #parserVersion:Ljava/lang/String;
    :goto_26
    :try_start_26
    const-string v2, "org.apache.xerces.impl.Version"

    .line 949
    .local v2, XERCES2_VERSION_CLASS:Ljava/lang/String;
    const-string v7, "org.apache.xerces.impl.Version"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    .line 953
    .restart local v3       #clazz:Ljava/lang/Class;
    const-string v7, "fVersion"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 954
    .restart local v5       #f:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 956
    .restart local v6       #parserVersion:Ljava/lang/String;
    const-string v7, "version.xerces2"

    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_63

    .line 965
    .end local v2           #XERCES2_VERSION_CLASS:Ljava/lang/String;
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v5           #f:Ljava/lang/reflect/Field;
    .end local v6           #parserVersion:Ljava/lang/String;
    :goto_45
    :try_start_45
    const-string v0, "org.apache.crimson.parser.Parser2"

    .line 967
    .local v0, CRIMSON_CLASS:Ljava/lang/String;
    const-string v7, "org.apache.crimson.parser.Parser2"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    .line 971
    .restart local v3       #clazz:Ljava/lang/Class;
    const-string v7, "version.crimson"

    const-string v8, "present-unknown-version"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_6c

    .line 977
    .end local v0           #CRIMSON_CLASS:Ljava/lang/String;
    .end local v3           #clazz:Ljava/lang/Class;
    :goto_59
    return-void

    .line 939
    :catch_5a
    move-exception v4

    .line 941
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "version.xerces1"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 958
    .end local v4           #e:Ljava/lang/Exception;
    :catch_63
    move-exception v4

    .line 960
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v7, "version.xerces2"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 973
    .end local v4           #e:Ljava/lang/Exception;
    :catch_6c
    move-exception v4

    .line 975
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v7, "version.crimson"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59
.end method

.method protected checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;
    .registers 14
    .parameter "cp"
    .parameter "jars"

    .prologue
    const/4 v10, 0x2

    .line 659
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e

    array-length v6, p2

    if-nez v6, :cond_10

    .line 661
    :cond_e
    const/4 v5, 0x0

    .line 719
    :cond_f
    return-object v5

    .line 663
    :cond_10
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 664
    .local v5, v:Ljava/util/Vector;
    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1c
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 670
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, filename:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    array-length v6, p2

    if-ge v3, v6, :cond_1c

    .line 674
    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_8f

    .line 676
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 685
    :try_start_3e
    new-instance v2, Ljava/util/Hashtable;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/Hashtable;-><init>(I)V

    .line 687
    .local v2, h:Ljava/util/Hashtable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v6, "xalan.jar"

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-apparent.version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_8c
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_8f} :catch_e6

    .line 672
    .end local v0           #f:Ljava/io/File;
    .end local v2           #h:Ljava/util/Hashtable;
    :cond_8f
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 708
    .restart local v0       #f:Ljava/io/File;
    :cond_92
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v10}, Ljava/util/Hashtable;-><init>(I)V

    .line 710
    .restart local v2       #h:Ljava/util/Hashtable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING. Classpath entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-apparent.version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "not-present"

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8f

    .line 700
    .end local v2           #h:Ljava/util/Hashtable;
    :catch_e6
    move-exception v6

    goto :goto_8f
.end method

.method protected checkProcessorVersion(Ljava/util/Hashtable;)V
    .registers 18
    .parameter "h"

    .prologue
    .line 834
    if-nez p1, :cond_7

    .line 835
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    .line 839
    .restart local p1
    :cond_7
    :try_start_7
    const-string v1, "org.apache.xalan.xslt.XSLProcessorVersion"

    .line 842
    .local v1, XALAN1_VERSION_CLASS:Ljava/lang/String;
    const-string v13, "org.apache.xalan.xslt.XSLProcessorVersion"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    .line 846
    .local v6, clazz:Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 847
    .local v5, buf:Ljava/lang/StringBuffer;
    const-string v13, "PRODUCT"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 849
    .local v9, f:Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 850
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 852
    const-string v13, "LANGUAGE"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 854
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 855
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 857
    const-string v13, "S_VERSION"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 859
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 860
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 861
    const-string v13, "version.xalan1"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_b2

    .line 872
    .end local v1           #XALAN1_VERSION_CLASS:Ljava/lang/String;
    .end local v5           #buf:Ljava/lang/StringBuffer;
    .end local v6           #clazz:Ljava/lang/Class;
    .end local v9           #f:Ljava/lang/reflect/Field;
    :goto_5d
    :try_start_5d
    const-string v4, "org.apache.xalan.processor.XSLProcessorVersion"

    .line 875
    .local v4, XALAN2_VERSION_CLASS:Ljava/lang/String;
    const-string v13, "org.apache.xalan.processor.XSLProcessorVersion"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    .line 879
    .restart local v6       #clazz:Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 880
    .restart local v5       #buf:Ljava/lang/StringBuffer;
    const-string v13, "S_VERSION"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 881
    .restart local v9       #f:Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 883
    const-string v13, "version.xalan2x"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_88} :catch_bd

    .line 892
    .end local v4           #XALAN2_VERSION_CLASS:Ljava/lang/String;
    .end local v5           #buf:Ljava/lang/StringBuffer;
    .end local v6           #clazz:Ljava/lang/Class;
    .end local v9           #f:Ljava/lang/reflect/Field;
    :goto_88
    :try_start_88
    const-string v2, "org.apache.xalan.Version"

    .line 894
    .local v2, XALAN2_2_VERSION_CLASS:Ljava/lang/String;
    const-string v3, "getVersion"

    .line 895
    .local v3, XALAN2_2_VERSION_METHOD:Ljava/lang/String;
    const/4 v13, 0x0

    new-array v11, v13, [Ljava/lang/Class;

    .line 897
    .local v11, noArgs:[Ljava/lang/Class;
    const-string v13, "org.apache.xalan.Version"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    .line 900
    .restart local v6       #clazz:Ljava/lang/Class;
    const-string v13, "getVersion"

    invoke-virtual {v6, v13, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 901
    .local v10, method:Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v10, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 903
    .local v12, returnValue:Ljava/lang/Object;
    const-string v13, "version.xalan2_2"

    check-cast v12, Ljava/lang/String;

    .end local v12           #returnValue:Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_b1} :catch_c8

    .line 909
    .end local v2           #XALAN2_2_VERSION_CLASS:Ljava/lang/String;
    .end local v3           #XALAN2_2_VERSION_METHOD:Ljava/lang/String;
    .end local v6           #clazz:Ljava/lang/Class;
    .end local v10           #method:Ljava/lang/reflect/Method;
    .end local v11           #noArgs:[Ljava/lang/Class;
    :goto_b1
    return-void

    .line 863
    :catch_b2
    move-exception v7

    .line 865
    .local v7, e1:Ljava/lang/Exception;
    const-string v13, "version.xalan1"

    const-string v14, "not-present"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 885
    .end local v7           #e1:Ljava/lang/Exception;
    :catch_bd
    move-exception v8

    .line 887
    .local v8, e2:Ljava/lang/Exception;
    const-string v13, "version.xalan2x"

    const-string v14, "not-present"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 905
    .end local v8           #e2:Ljava/lang/Exception;
    :catch_c8
    move-exception v8

    .line 907
    .restart local v8       #e2:Ljava/lang/Exception;
    const-string v13, "version.xalan2_2"

    const-string v14, "not-present"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1
.end method

.method protected checkSAXVersion(Ljava/util/Hashtable;)V
    .registers 19
    .parameter "h"

    .prologue
    .line 1100
    if-nez p1, :cond_7

    .line 1101
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    .line 1103
    .restart local p1
    :cond_7
    const-string v1, "org.xml.sax.Parser"

    .line 1104
    .local v1, SAX_VERSION1_CLASS:Ljava/lang/String;
    const-string v2, "parse"

    .line 1105
    .local v2, SAX_VERSION1_METHOD:Ljava/lang/String;
    const-string v5, "org.xml.sax.XMLReader"

    .line 1106
    .local v5, SAX_VERSION2_CLASS:Ljava/lang/String;
    const-string v6, "parse"

    .line 1107
    .local v6, SAX_VERSION2_METHOD:Ljava/lang/String;
    const-string v3, "org.xml.sax.helpers.AttributesImpl"

    .line 1108
    .local v3, SAX_VERSION2BETA_CLASSNF:Ljava/lang/String;
    const-string v4, "setAttributes"

    .line 1109
    .local v4, SAX_VERSION2BETA_METHODNF:Ljava/lang/String;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    .line 1111
    .local v13, oneStringArg:[Ljava/lang/Class;
    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Lorg/xml/sax/Attributes;

    aput-object v15, v7, v14

    .line 1117
    .local v7, attributesArg:[Ljava/lang/Class;
    :try_start_23
    const-string v14, "org.xml.sax.helpers.AttributesImpl"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    .line 1120
    .local v8, clazz:Ljava/lang/Class;
    const-string v14, "setAttributes"

    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1124
    .local v12, method:Ljava/lang/reflect/Method;
    const-string v14, "version.SAX"

    const-string v15, "2.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_3f

    .line 1174
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v12           #method:Ljava/lang/reflect/Method;
    :goto_3e
    return-void

    .line 1126
    :catch_3f
    move-exception v9

    .line 1129
    .local v9, e:Ljava/lang/Exception;
    const-string v14, "ERROR.version.SAX"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR attempting to load SAX version 2 class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string v14, "ERROR."

    const-string v15, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :try_start_67
    const-string v14, "org.xml.sax.XMLReader"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    .line 1138
    .restart local v8       #clazz:Ljava/lang/Class;
    const-string v14, "parse"

    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1143
    .restart local v12       #method:Ljava/lang/reflect/Method;
    const-string v14, "version.SAX-backlevel"

    const-string v15, "2.0beta2-or-earlier"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_82} :catch_83

    goto :goto_3e

    .line 1145
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v12           #method:Ljava/lang/reflect/Method;
    :catch_83
    move-exception v10

    .line 1148
    .local v10, e2:Ljava/lang/Exception;
    const-string v14, "ERROR.version.SAX"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR attempting to load SAX version 2 class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    const-string v14, "ERROR."

    const-string v15, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :try_start_ab
    const-string v14, "org.xml.sax.Parser"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    .line 1157
    .restart local v8       #clazz:Ljava/lang/Class;
    const-string v14, "parse"

    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1162
    .restart local v12       #method:Ljava/lang/reflect/Method;
    const-string v14, "version.SAX-backlevel"

    const-string v15, "1.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c6} :catch_c8

    goto/16 :goto_3e

    .line 1164
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v12           #method:Ljava/lang/reflect/Method;
    :catch_c8
    move-exception v11

    .line 1168
    .local v11, e3:Ljava/lang/Exception;
    const-string v14, "ERROR.version.SAX-backlevel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR attempting to load SAX version 1 class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e
.end method

.method protected checkSystemProperties(Ljava/util/Hashtable;)V
    .registers 10
    .parameter "h"

    .prologue
    .line 565
    if-nez p1, :cond_7

    .line 566
    new-instance p1, Ljava/util/Hashtable;

    .end local p1
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 571
    .restart local p1
    :cond_7
    :try_start_7
    const-string v6, "java.version"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, javaVersion:Ljava/lang/String;
    const-string v6, "java.version"

    invoke-virtual {p1, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_12} :catch_5f

    .line 590
    .end local v2           #javaVersion:Ljava/lang/String;
    :goto_12
    :try_start_12
    const-string v6, "java.class.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, cp:Ljava/lang/String;
    const-string v6, "java.class.path"

    invoke-virtual {p1, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 596
    .local v0, classpathJars:Ljava/util/Vector;
    if-eqz v0, :cond_2a

    .line 597
    const-string v6, "foundclasses.java.class.path"

    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_2a
    const-string v6, "sun.boot.class.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, othercp:Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 604
    const-string v6, "sun.boot.class.path"

    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_44

    .line 609
    const-string v6, "foundclasses.sun.boot.class.path"

    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_44
    const-string v6, "java.ext.dirs"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 616
    if-eqz v3, :cond_5e

    .line 618
    const-string v6, "java.ext.dirs"

    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_5e

    .line 623
    const-string v6, "foundclasses.java.ext.dirs"

    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_5e} :catch_68

    .line 637
    .end local v0           #classpathJars:Ljava/util/Vector;
    .end local v1           #cp:Ljava/lang/String;
    .end local v3           #othercp:Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void

    .line 575
    :catch_5f
    move-exception v4

    .line 579
    .local v4, se:Ljava/lang/SecurityException;
    const-string v6, "java.version"

    const-string v7, "WARNING: SecurityException thrown accessing system version properties"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 630
    .end local v4           #se:Ljava/lang/SecurityException;
    :catch_68
    move-exception v5

    .line 633
    .local v5, se2:Ljava/lang/SecurityException;
    const-string v6, "java.class.path"

    const-string v7, "WARNING: SecurityException thrown accessing system classpath properties"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e
.end method

.method protected getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;
    .registers 7
    .parameter "jarName"
    .parameter "jarSize"

    .prologue
    .line 745
    sget-object v1, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 747
    .local v0, foundSize:Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 767
    .end local v0           #foundSize:Ljava/lang/String;
    :goto_15
    return-object v0

    .line 753
    .restart local v0       #foundSize:Ljava/lang/String;
    :cond_16
    const-string v1, "xerces.jar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "xercesImpl.jar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 761
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WARNING."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "present-unknown-version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 767
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "present-unknown-version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getEnvironmentHash()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 218
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 223
    .local v0, hash:Ljava/util/Hashtable;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkJAXPVersion(Ljava/util/Hashtable;)V

    .line 224
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkProcessorVersion(Ljava/util/Hashtable;)V

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkParserVersion(Ljava/util/Hashtable;)V

    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkAntVersion(Ljava/util/Hashtable;)V

    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkDOMVersion(Ljava/util/Hashtable;)V

    .line 228
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSAXVersion(Ljava/util/Hashtable;)V

    .line 229
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSystemProperties(Ljava/util/Hashtable;)V

    .line 231
    return-object v0
.end method

.method protected logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z
    .registers 12
    .parameter "v"
    .parameter "desc"

    .prologue
    .line 356
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_b

    .line 357
    :cond_9
    const/4 v1, 0x0

    .line 393
    :goto_a
    return v1

    .line 359
    :cond_b
    const/4 v1, 0x0

    .line 361
    .local v1, errors:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#---- BEGIN Listing XML-related jars in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 363
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_98

    .line 365
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    .line 367
    .local v6, subhash:Ljava/util/Hashtable;
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 368
    .local v5, keys:Ljava/util/Enumeration;
    :goto_39
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_95

    .line 372
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .local v3, key:Ljava/lang/Object;
    move-object v4, v3

    .line 373
    check-cast v4, Ljava/lang/String;

    .line 376
    .local v4, keyStr:Ljava/lang/String;
    :try_start_46
    const-string v7, "ERROR."

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 378
    const/4 v1, 0x1

    .line 380
    :cond_4f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6d} :catch_6e

    goto :goto_39

    .line 383
    :catch_6e
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= threw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_39

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #key:Ljava/lang/Object;
    .end local v4           #keyStr:Ljava/lang/String;
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 391
    .end local v5           #keys:Ljava/util/Enumeration;
    .end local v6           #subhash:Ljava/util/Hashtable;
    :cond_98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#----- END Listing XML-related jars in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method protected logMsg(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 1294
    iget-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method protected writeEnvironmentReport(Ljava/util/Hashtable;)Z
    .registers 10
    .parameter "h"

    .prologue
    .line 251
    if-nez p1, :cond_9

    .line 253
    const-string v6, "# ERROR: writeEnvironmentReport called with null Hashtable"

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x0

    .line 301
    :goto_8
    return v1

    .line 257
    :cond_9
    const/4 v1, 0x0

    .line 259
    .local v1, errors:Z
    const-string v6, "#---- BEGIN writeEnvironmentReport($Revision: 468646 $): Useful stuff found: ----"

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 264
    .local v4, keys:Ljava/util/Enumeration;
    :goto_13
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 268
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .local v2, key:Ljava/lang/Object;
    move-object v3, v2

    .line 269
    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, keyStr:Ljava/lang/String;
    :try_start_20
    const-string v6, "foundclasses."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 275
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 276
    .local v5, v:Ljava/util/Vector;
    invoke-virtual {p0, v5, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 277
    goto :goto_13

    .line 285
    .end local v5           #v:Ljava/util/Vector;
    :cond_34
    const-string v6, "ERROR."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 287
    const/4 v1, 0x1

    .line 289
    :cond_3d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5b} :catch_5c

    goto :goto_13

    .line 292
    :catch_5c
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= threw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_13

    .line 298
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keyStr:Ljava/lang/String;
    :cond_82
    const-string v6, "#----- END writeEnvironmentReport: Useful properties found: -----"

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_8
.end method
