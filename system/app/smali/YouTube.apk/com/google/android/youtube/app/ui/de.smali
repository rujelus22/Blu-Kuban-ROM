.class final Lcom/google/android/youtube/app/ui/de;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/da;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/da;Lcom/google/android/youtube/core/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/de;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/de;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 160
    return-void
.end method
