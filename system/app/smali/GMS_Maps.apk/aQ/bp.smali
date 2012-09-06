.class LaQ/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field private e:LaQ/bm;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(LaQ/bm;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, LaQ/bp;->e:LaQ/bm;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, LaQ/bp;->e:LaQ/bm;

    invoke-static {v0}, LaQ/bm;->a(LaQ/bm;)V

    .line 54
    :cond_9
    iput-object p1, p0, LaQ/bp;->e:LaQ/bm;

    .line 55
    invoke-static {p1, p0}, LaQ/bm;->a(LaQ/bm;LaQ/bp;)V

    .line 56
    return-void
.end method
