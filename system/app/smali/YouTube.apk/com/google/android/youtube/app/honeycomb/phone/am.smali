.class final Lcom/google/android/youtube/app/honeycomb/phone/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->b:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method
