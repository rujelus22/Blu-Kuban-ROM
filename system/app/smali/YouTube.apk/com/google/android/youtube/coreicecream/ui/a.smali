.class final Lcom/google/android/youtube/coreicecream/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/a;->a:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    return-void
.end method

.method public final onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/a;->a:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->a(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;I)V

    .line 61
    return-void
.end method

.method public final onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    return-void
.end method
