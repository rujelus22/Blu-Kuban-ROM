.class Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;
.super Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;
.source "HostActionBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/HostActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuListenerV14"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HostActionBar;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;Lcom/google/android/apps/plus/views/HostActionBar$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/HostActionBar;Lcom/google/android/apps/plus/views/HostActionBar$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 764
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    #getter for: Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->access$300(Lcom/google/android/apps/plus/views/HostActionBar;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_f

    .line 765
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    #setter for: Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenuVisible:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->access$402(Lcom/google/android/apps/plus/views/HostActionBar;Z)Z

    .line 769
    :goto_e
    return-void

    .line 767
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    #setter for: Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenuVisible:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->access$502(Lcom/google/android/apps/plus/views/HostActionBar;Z)Z

    goto :goto_e
.end method
