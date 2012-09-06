.class public Larr;
.super Landroid/os/AsyncTask;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic a:Landroid/app/Activity;

.field a:Landroid/widget/ImageView;

.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 298
    iput-object p1, p0, Larr;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Larr;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Larr;->a:Landroid/app/Activity;

    sget v1, Larg;->gf_app_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larr;->a:Landroid/widget/ImageView;

    .line 305
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 308
    sget v2, Larf;->gf_icon:I

    iput v2, p0, Larr;->a:I

    .line 310
    const/4 v2, 0x0

    :try_start_25
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 311
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Larr;->a:I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2d} :catch_2f

    .line 315
    :goto_2d
    const/4 v0, 0x0

    return-object v0

    .line 312
    :catch_2f
    move-exception v0

    goto :goto_2d
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Larr;->a:Landroid/widget/ImageView;

    iget v1, p0, Larr;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 298
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Larr;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Larr;->a(Ljava/lang/Void;)V

    return-void
.end method
