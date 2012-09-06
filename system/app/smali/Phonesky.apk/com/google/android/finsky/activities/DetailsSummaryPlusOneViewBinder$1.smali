.class Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryPlusOneViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    #calls: Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->handleClick()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;)V

    .line 174
    return-void
.end method
