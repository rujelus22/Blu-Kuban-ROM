.class Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$1;
.super Ljava/lang/Object;
.source "ViewFAQs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$1;->this$1:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 183
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 184
    const/4 v0, 0x0

    return v0
.end method
