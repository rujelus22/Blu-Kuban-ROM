.class final Lcom/google/android/youtube/app/honeycomb/phone/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->CLICK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;)Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 503
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;ZZ)V

    .line 504
    return-void
.end method
