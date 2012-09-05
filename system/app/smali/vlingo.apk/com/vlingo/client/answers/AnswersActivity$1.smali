.class Lcom/vlingo/client/answers/AnswersActivity$1;
.super Ljava/lang/Object;
.source "AnswersActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/answers/AnswersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/answers/AnswersActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/answers/AnswersActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vlingo/client/answers/AnswersActivity$1;->this$0:Lcom/vlingo/client/answers/AnswersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 48
    const-string v0, "auto_speak_answer"

    invoke-static {v0, p2}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method
