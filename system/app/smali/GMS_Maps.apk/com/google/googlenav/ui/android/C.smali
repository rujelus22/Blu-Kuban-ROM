.class public Lcom/google/googlenav/ui/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aC;


# static fields
.field private static c:Lcom/google/googlenav/ui/android/aC;


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/android/c;->c:Lcom/google/googlenav/ui/android/aC;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/c;->a:Landroid/widget/Toast;

    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->a:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 50
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/google/googlenav/ui/android/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/c;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/c;->b(Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/c;->d:Ljava/lang/String;

    .line 81
    :cond_7
    :goto_7
    return-void

    .line 67
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    const v1, 0x1080096

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    iget-object v1, p0, Lcom/google/googlenav/ui/android/c;->a:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/c;->d:Ljava/lang/String;

    goto :goto_7
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 86
    iput-object v1, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/google/googlenav/ui/android/c;->d:Ljava/lang/String;

    .line 95
    :goto_b
    return-void

    .line 91
    :cond_c
    iput-object p1, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/c;->a()V

    goto :goto_b
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/google/googlenav/ui/android/c;->d:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 114
    iput-object v1, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    .line 122
    :goto_b
    return-void

    .line 118
    :cond_c
    iput-object p1, p0, Lcom/google/googlenav/ui/android/c;->b:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/c;->a()V

    goto :goto_b
.end method
