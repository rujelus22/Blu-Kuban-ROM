.class public Larm;
.super Ljava/lang/Object;
.source "UserFeedback.java"


# static fields
.field private static a:Larm;

.field private static c:Z


# instance fields
.field private a:Landroid/os/AsyncTask;
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
.end field

.field public a:LarC;

.field private a:LarF;

.field private a:Larz;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object p0, Larm;->a:Larm;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Larm;->c:Z

    .line 69
    return-void
.end method

.method private a(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v6, p5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v0, Lari;->gf_yes:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Larp;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Larp;-><init>(Larm;ZZLjava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lari;->gf_no:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Larn;

    invoke-direct {v2, p0}, Larn;-><init>(Larm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method static synthetic a(Larm;)LarF;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Larm;->a:LarF;

    return-object v0
.end method

.method public static a()Larm;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Larm;->a:Larm;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Larm;->a(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 355
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 356
    check-cast p0, Landroid/view/ViewGroup;

    .line 357
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 358
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Larm;->a(Landroid/view/View;)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 360
    :cond_17
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    .line 361
    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_21
    return-void
.end method

.method public static c()V
    .registers 1

    .prologue
    .line 326
    const/4 v0, 0x1

    sput-boolean v0, Larm;->c:Z

    .line 327
    return-void
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 319
    sget-boolean v0, Larm;->c:Z

    return v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 153
    iget-object v0, p0, Larm;->a:LarF;

    invoke-virtual {v0}, LarF;->b()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 154
    sget v0, Lari;->gf_should_submit_on_empty_description:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Larm;->a(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    :goto_21
    return-object v0

    .line 161
    :cond_22
    invoke-virtual {p0}, Larm;->a()Larz;

    move-result-object v0

    iget-object v0, v0, Larz;->chosenAccount:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_44

    .line 162
    iget-object v0, p0, Larm;->a:LarF;

    invoke-virtual {v0}, LarF;->c()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 163
    sget v0, Lari;->gf_should_submit_anonymously:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Larm;->a(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_21

    .line 170
    :cond_44
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a()LarF;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Larm;->a:LarF;

    return-object v0
.end method

.method public a()Larz;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Larm;->a:Larz;

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Larm;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 204
    new-instance v0, LarC;

    iget-object v1, p0, Larm;->a:LarF;

    invoke-direct {v0, v1}, LarC;-><init>(LarF;)V

    iput-object v0, p0, Larm;->a:LarC;

    .line 205
    new-instance v0, Larz;

    invoke-direct {v0}, Larz;-><init>()V

    iput-object v0, p0, Larm;->a:Larz;

    .line 206
    iget-object v0, p0, Larm;->a:LarC;

    iget-object v1, p0, Larm;->a:Larz;

    invoke-virtual {v0, v1}, LarC;->a(Larz;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Larm;->a:Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method protected a(LarF;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Larm;->a:LarF;

    .line 113
    invoke-virtual {p1}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/FeedbackConnectivityReceiver;->a(Landroid/content/Context;Z)V

    .line 114
    invoke-virtual {p0}, Larm;->a()V

    .line 115
    return-void
.end method

.method public a(LarF;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Larm;->a(LarF;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, LarF;->a()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-virtual {p1}, LarF;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Larm;->a:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Larm;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 254
    :try_start_8
    iget-object v0, p0, Larm;->a:Larz;

    iput-object p1, v0, Larz;->description:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    .line 263
    :cond_c
    :goto_c
    return-void

    .line 255
    :catch_d
    move-exception v0

    .line 260
    const-string v0, "GFEEDBACK"

    const-string v1, "Race condition made report description to throw an NPE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method protected a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-boolean p1, p0, Larm;->a:Z

    .line 224
    return-void
.end method

.method protected a(ZZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2, p3}, Larm;->b(ZZLjava/lang/String;)V

    .line 125
    iget-object v0, p0, Larm;->a:Larz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Larz;->b(Z)V

    .line 144
    new-instance v0, Laro;

    invoke-direct {v0, p0}, Laro;-><init>(Larm;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Laro;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Larm;->a:Z

    return v0
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Larm;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_5} :catch_11

    .line 309
    :goto_5
    return-void

    .line 304
    :catch_6
    move-exception v0

    .line 305
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 306
    :catch_11
    move-exception v0

    .line 307
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-boolean p1, p0, Larm;->b:Z

    .line 238
    return-void
.end method

.method public b(ZZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0, p3}, Larm;->a(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Larm;->a(Z)V

    .line 216
    invoke-virtual {p0, p2}, Larm;->b(Z)V

    .line 217
    return-void
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Larm;->b:Z

    return v0
.end method

.method protected c()Z
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Larm;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
