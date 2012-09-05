.class Lcom/sprint/smps/activities/ChangeQuestions$1;
.super Ljava/lang/Object;
.source "ChangeQuestions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ChangeQuestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ChangeQuestions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ChangeQuestions;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const v10, 0x7f03001a

    const v9, 0x1090008

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 49
    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 50
    .local v2, sv:Landroid/widget/ScrollView;
    new-instance v3, Lcom/sprint/smps/activities/ChangeQuestions$1$1;

    invoke-direct {v3, p0}, Lcom/sprint/smps/activities/ChangeQuestions$1$1;-><init>(Lcom/sprint/smps/activities/ChangeQuestions$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 60
    .local v1, s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$0()Lcom/sprint/smps/activities/ChangeQuestions;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    invoke-direct {v0, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 61
    .local v0, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v3, v3, v7

    if-eqz v3, :cond_cc

    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ""

    if-eq v3, v4, :cond_cc

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    sget-object v4, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    sget-object v5, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v5, v5, v7

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->getIndexForSelection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v4, v5}, Lcom/sprint/smps/activities/ChangeQuestions;->access$1(Lcom/sprint/smps/activities/ChangeQuestions;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 65
    :goto_54
    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    const v4, 0x7f08003e

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #s:Landroid/widget/Spinner;
    check-cast v1, Landroid/widget/Spinner;

    .line 66
    .restart local v1       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$0()Lcom/sprint/smps/activities/ChangeQuestions;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    invoke-direct {v0, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 67
    .restart local v0       #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eqz v3, :cond_d0

    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, ""

    if-eq v3, v4, :cond_d0

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    sget-object v4, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    sget-object v5, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v5, v5, v6

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->getIndexForSelection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v4, v5}, Lcom/sprint/smps/activities/ChangeQuestions;->access$1(Lcom/sprint/smps/activities/ChangeQuestions;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 71
    :goto_8d
    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #s:Landroid/widget/Spinner;
    check-cast v1, Landroid/widget/Spinner;

    .line 72
    .restart local v1       #s:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$0()Lcom/sprint/smps/activities/ChangeQuestions;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    invoke-direct {v0, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 73
    .restart local v0       #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v3, v3, v8

    if-eqz v3, :cond_d4

    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v3, v3, v8

    const-string v4, ""

    if-eq v3, v4, :cond_d4

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    sget-object v4, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    sget-object v5, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    aget-object v5, v5, v8

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->getIndexForSelection([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v4, v5}, Lcom/sprint/smps/activities/ChangeQuestions;->access$1(Lcom/sprint/smps/activities/ChangeQuestions;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 77
    :goto_c6
    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$1;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    invoke-virtual {v3, v6}, Lcom/sprint/smps/activities/ChangeQuestions;->removeDialog(I)V

    .line 78
    return-void

    .line 63
    :cond_cc
    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_54

    .line 69
    :cond_d0
    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_8d

    .line 75
    :cond_d4
    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_c6
.end method
