.class public final Lcom/dropbox/android/activity/M;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final b:I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->e:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v0

    sput v0, Lcom/dropbox/android/activity/M;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/dropbox/android/activity/M;->a:Z

    .line 31
    if-eqz p1, :cond_10

    .line 32
    const-string v0, "mWarnIfNoExternalStorage"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/M;->a:Z

    .line 34
    :cond_10
    return-void
.end method


# virtual methods
.method public final a(ILandroid/app/Activity;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    sget v0, Lcom/dropbox/android/activity/M;->b:I

    if-ne p1, v0, :cond_9

    .line 67
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/g;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 69
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/M;->a:Z

    .line 56
    :cond_9
    :goto_9
    return-void

    .line 52
    :cond_a
    iget-boolean v0, p0, Lcom/dropbox/android/activity/M;->a:Z

    if-eqz v0, :cond_9

    .line 53
    sget v0, Lcom/dropbox/android/activity/M;->b:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/M;->a:Z

    goto :goto_9
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    const-string v0, "mWarnIfNoExternalStorage"

    iget-boolean v1, p0, Lcom/dropbox/android/activity/M;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method
