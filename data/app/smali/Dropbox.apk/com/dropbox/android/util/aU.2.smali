.class public final Lcom/dropbox/android/util/aU;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static c:Lcom/dropbox/android/util/aU;


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/dropbox/android/util/aV;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/aV;-><init>(Lcom/dropbox/android/util/aU;)V

    iput-object v0, p0, Lcom/dropbox/android/util/aU;->a:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/dropbox/android/util/aU;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/util/aU;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dropbox/android/util/aU;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/dropbox/android/util/aU;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/dropbox/android/util/aU;->c:Lcom/dropbox/android/util/aU;

    if-nez v0, :cond_a

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 32
    :cond_a
    sget-object v0, Lcom/dropbox/android/util/aU;->c:Lcom/dropbox/android/util/aU;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/android/util/aU;->c:Lcom/dropbox/android/util/aU;

    if-nez v0, :cond_c

    .line 22
    new-instance v0, Lcom/dropbox/android/util/aU;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/aU;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/util/aU;->c:Lcom/dropbox/android/util/aU;

    .line 26
    return-void

    .line 24
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dropbox/android/util/aU;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/aU;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final varargs a(I[Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/android/util/aU;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/aU;->a(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/android/util/aU;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    return-void
.end method
