.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 104
    return-void
.end method

.method public onTabSelected(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;I)V

    .line 96
    return-void
.end method

.method public onTabUnselected(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 100
    return-void
.end method
