.class public Lcom/dropbox/android/util/W;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/dropbox/android/util/W;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/W;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
