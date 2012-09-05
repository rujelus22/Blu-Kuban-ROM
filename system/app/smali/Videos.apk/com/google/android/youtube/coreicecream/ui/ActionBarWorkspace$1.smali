.class Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace$1;
.super Ljava/lang/Object;
.source "ActionBarWorkspace.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace$1;->this$0:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 64
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace$1;->this$0:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    #calls: Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->snapToScreenByTap(I)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->access$000(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;I)V

    .line 58
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 61
    return-void
.end method
