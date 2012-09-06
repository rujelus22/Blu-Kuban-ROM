.class final Lcom/google/android/youtube/app/honeycomb/phone/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/a;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/bm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;Lcom/google/android/youtube/app/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bo;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bo;->a:Lcom/google/android/youtube/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bo;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->c(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bo;->a:Lcom/google/android/youtube/app/a;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bo;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->c(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bo;->b:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_19
    sget-object v3, Lcom/google/android/youtube/app/m;->R:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 102
    :cond_1e
    return-void

    .line 99
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19
.end method
