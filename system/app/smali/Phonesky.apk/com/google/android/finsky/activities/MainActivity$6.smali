.class Lcom/google/android/finsky/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$6;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$6;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #calls: Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$600(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 542
    return-void
.end method
