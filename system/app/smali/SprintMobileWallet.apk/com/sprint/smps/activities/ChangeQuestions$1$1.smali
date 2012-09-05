.class Lcom/sprint/smps/activities/ChangeQuestions$1$1;
.super Ljava/lang/Object;
.source "ChangeQuestions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ChangeQuestions$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ChangeQuestions$1;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ChangeQuestions$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangeQuestions$1$1;->this$1:Lcom/sprint/smps/activities/ChangeQuestions$1;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 54
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 55
    const/4 v0, 0x0

    return v0
.end method
