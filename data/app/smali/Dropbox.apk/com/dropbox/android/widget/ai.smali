.class final Lcom/dropbox/android/widget/ai;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field final a:Landroid/content/pm/ResolveInfo;

.field final b:Ljava/lang/CharSequence;

.field c:Landroid/graphics/drawable/Drawable;

.field final d:Ljava/lang/CharSequence;

.field final e:Landroid/content/Intent;

.field final synthetic f:Lcom/dropbox/android/widget/ag;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/ag;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dropbox/android/widget/ai;->f:Lcom/dropbox/android/widget/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/dropbox/android/widget/ai;->a:Landroid/content/pm/ResolveInfo;

    .line 165
    iput-object p3, p0, Lcom/dropbox/android/widget/ai;->b:Ljava/lang/CharSequence;

    .line 166
    iput-object p4, p0, Lcom/dropbox/android/widget/ai;->d:Ljava/lang/CharSequence;

    .line 167
    iput-object p5, p0, Lcom/dropbox/android/widget/ai;->e:Landroid/content/Intent;

    .line 168
    return-void
.end method
