.class Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;
.super Ljava/lang/Object;
.source "HostActionBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/HostActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HostActionBar;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/HostActionBar;Lcom/google/android/apps/plus/views/HostActionBar$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;->this$0:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
