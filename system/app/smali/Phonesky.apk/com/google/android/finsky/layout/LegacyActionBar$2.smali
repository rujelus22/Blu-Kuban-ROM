.class Lcom/google/android/finsky/layout/LegacyActionBar$2;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$2;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$2;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #calls: Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$200(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    .line 126
    return-void
.end method
