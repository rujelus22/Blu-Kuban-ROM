.class public LadM;
.super Ljava/lang/Object;
.source "Json.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lade;

    const-string v1, "application/json"

    invoke-direct {v0, v1}, Lade;-><init>(Ljava/lang/String;)V

    sget-object v1, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lade;->a(Ljava/nio/charset/Charset;)Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LadM;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
