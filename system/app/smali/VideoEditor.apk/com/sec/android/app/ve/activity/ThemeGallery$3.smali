.class Lcom/sec/android/app/ve/activity/ThemeGallery$3;
.super Ljava/lang/Object;
.source "ThemeGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeGallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    #calls: Lcom/sec/android/app/ve/activity/ThemeGallery;->launchPEA()V
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->access$1(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    .line 156
    return-void
.end method
