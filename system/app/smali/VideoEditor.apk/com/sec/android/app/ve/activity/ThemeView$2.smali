.class Lcom/sec/android/app/ve/activity/ThemeView$2;
.super Ljava/lang/Object;
.source "ThemeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ThemeView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeView$2;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$2;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ThemeView;->finish()V

    .line 109
    return-void
.end method
