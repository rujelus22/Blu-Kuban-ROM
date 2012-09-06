.class public LDd;
.super Ljava/lang/Object;
.source "TextView.java"


# instance fields
.field public a:I

.field public a:LDl;

.field public a:Landroid/os/Bundle;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field public a:Ljava/lang/CharSequence;

.field public a:Ljava/lang/String;

.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, LDd;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, LDd;->a:I

    return-void
.end method
