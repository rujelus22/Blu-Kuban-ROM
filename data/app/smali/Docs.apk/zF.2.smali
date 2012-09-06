.class public LzF;
.super Ljava/lang/Object;
.source "AuthorImageManager.java"


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private a:LzW;

.field private final b:I


# direct methods
.method public constructor <init>(LzW;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x3a

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, LzF;->a:I

    .line 22
    iput v0, p0, LzF;->b:I

    .line 25
    iput-object p1, p0, LzF;->a:LzW;

    .line 26
    iput-object p2, p0, LzF;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic a(LzF;)LzW;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, LzF;->a:LzW;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, LzF;->a:LzW;

    invoke-virtual {v0}, LzW;->b()V

    .line 79
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3a

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    iget-object v2, p0, LzF;->a:LzW;

    invoke-virtual {v2, v1, v3, v3}, LzW;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_13

    .line 47
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_12
    return v0

    .line 51
    :cond_13
    new-instance v2, LzG;

    invoke-direct {v2, p0, p1}, LzG;-><init>(LzF;Landroid/widget/ImageView;)V

    .line 65
    iget-object v3, p0, LzF;->a:LzW;

    invoke-virtual {v3, v1, v2}, LzW;->a(Ljava/lang/String;LAa;)V

    .line 66
    iget-object v2, p0, LzF;->a:LzW;

    invoke-virtual {v2, v1, v0}, LzW;->a(Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, LzF;->a:LzW;

    iget-object v2, p0, LzF;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LzW;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 73
    const/4 v0, 0x0

    goto :goto_12
.end method
