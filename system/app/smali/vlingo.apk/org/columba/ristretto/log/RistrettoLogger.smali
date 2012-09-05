.class public final Lorg/columba/ristretto/log/RistrettoLogger;
.super Ljava/lang/Object;
.source "RistrettoLogger.java"


# static fields
.field public static logStream:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static setLogStream(Ljava/io/OutputStream;)V
    .registers 1
    .parameter "log"

    .prologue
    .line 65
    sput-object p0, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    .line 66
    return-void
.end method
