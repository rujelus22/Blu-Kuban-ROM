.class public Lorg/snmp4j/version/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# static fields
.field public static final MAJOR:I = 0x1

.field public static final MINOR:I = 0xb

.field public static final PATCH:Ljava/lang/String; = ""

.field public static final UPDATE:I = 0x1

.field public static final VERSION:Ljava/lang/String; = "1.11.1"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static final getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    const-string v0, "1.11.1"

    return-object v0
.end method
