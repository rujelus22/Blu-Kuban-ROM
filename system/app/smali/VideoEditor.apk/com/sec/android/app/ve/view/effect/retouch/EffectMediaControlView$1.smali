.class Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView$1;
.super Ljava/lang/Object;
.source "EffectMediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 66
    return-void
.end method
