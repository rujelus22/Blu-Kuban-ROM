.class public Lcom/google/userfeedback/android/api/PreviewActivity;
.super Landroid/app/ListActivity;
.source "PreviewActivity.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private a:LarA;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Larh;->gf_preview_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->setContentView(I)V

    .line 47
    sget v0, Larg;->gf_send_from_preview:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:Landroid/widget/Button;

    new-instance v1, Lara;

    invoke-direct {v1, p0, p0}, Lara;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Larg;->gf_back:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->b:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->b:Landroid/widget/Button;

    new-instance v1, Larb;

    invoke-direct {v1, p0}, Larb;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    .line 76
    if-nez v0, :cond_3a

    .line 77
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 91
    :goto_39
    return-void

    .line 80
    :cond_3a
    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    .line 81
    if-nez v0, :cond_44

    .line 82
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    goto :goto_39

    .line 86
    :cond_44
    :try_start_44
    new-instance v1, LarA;

    invoke-direct {v1, p0, v0}, LarA;-><init>(Landroid/content/Context;Larz;)V

    iput-object v1, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:LarA;

    .line 87
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:LarA;

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_44 .. :try_end_50} :catch_51

    goto :goto_39

    .line 88
    :catch_51
    move-exception v0

    .line 89
    const-string v1, "GFEEDBACK"

    const-string v2, "failed to read in report fields"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 102
    invoke-static {p0}, Larm;->a(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 96
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:LarA;

    invoke-virtual {v0, p3}, LarA;->a(I)V

    .line 97
    return-void
.end method
