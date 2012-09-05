.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$6;
.super Ljava/lang/Object;
.source "ManagedFileBrowserThumb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->initSoftKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->finish()V

    .line 576
    return-void
.end method
