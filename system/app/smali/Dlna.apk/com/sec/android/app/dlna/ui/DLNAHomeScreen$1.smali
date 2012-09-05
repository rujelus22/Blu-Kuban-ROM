.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$1;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$1;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->handlePrevious()V

    .line 266
    return-void
.end method
