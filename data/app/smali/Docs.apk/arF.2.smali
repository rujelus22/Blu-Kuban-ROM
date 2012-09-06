.class public LarF;
.super Ljava/lang/Object;
.source "UserFeedbackSpec.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/view/View;

.field private a:Larl;

.field private a:Lary;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Larc;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, LarF;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, LarF;->a:Landroid/app/Activity;

    .line 137
    if-eqz p2, :cond_15

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LarF;->a:Landroid/view/View;

    .line 139
    iget-object v0, p0, LarF;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 141
    :cond_15
    iput-object p3, p0, LarF;->a:Ljava/lang/String;

    .line 142
    iput-object p4, p0, LarF;->b:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LarF;->a:Ljava/util/List;

    .line 146
    iput-boolean p6, p0, LarF;->a:Z

    .line 147
    iput-object v2, p0, LarF;->a:Landroid/graphics/Bitmap;

    .line 148
    iput-boolean v3, p0, LarF;->b:Z

    .line 149
    iput-boolean v3, p0, LarF;->c:Z

    .line 150
    iput-object v2, p0, LarF;->a:Lary;

    .line 151
    iput-object p5, p0, LarF;->d:Ljava/lang/String;

    .line 152
    iput-object v2, p0, LarF;->a:Larl;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, LarF;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, LarF;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, LarF;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0}, LarF;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 174
    iget-object v1, p0, LarF;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e

    .line 175
    iget-object v0, p0, LarF;->a:Landroid/graphics/Bitmap;

    .line 185
    :cond_d
    :goto_d
    return-object v0

    .line 176
    :cond_e
    iget-object v1, p0, LarF;->a:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 178
    :try_start_12
    iget-object v1, p0, LarF;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_d

    .line 179
    :catch_19
    move-exception v1

    .line 180
    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)LarF;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, LarF;->a:Ljava/util/List;

    new-instance v1, Larc;

    invoke-direct {v1, p1, p2, p3}, Larc;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-object p0
.end method

.method public a()Larl;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, LarF;->a:Larl;

    return-object v0
.end method

.method public a()Lary;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, LarF;->a:Lary;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, LarF;->a:Ljava/lang/String;

    return-object v0
.end method

.method a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Larc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, LarF;->a:Ljava/util/List;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, LarF;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, LarF;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, LarF;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, LarF;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Z
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, LarF;->b:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, LarF;->d:Ljava/lang/String;

    return-object v0
.end method
