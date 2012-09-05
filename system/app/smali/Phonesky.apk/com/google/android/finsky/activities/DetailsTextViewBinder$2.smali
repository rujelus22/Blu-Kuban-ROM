.class Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsTextViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsTextViewBinder;->configureContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    #calls: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->handleClick()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$600(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    .line 190
    return-void
.end method
