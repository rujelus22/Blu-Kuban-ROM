.class public LCH;
.super Ljava/lang/Object;
.source "SelectionModePreHoneyComb.java"

# interfaces
.implements LCD;


# instance fields
.field private final a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LCH;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    .line 17
    return-void
.end method


# virtual methods
.method public h()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, LCH;->a:Z

    return v0
.end method

.method public r()V
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, LCH;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    invoke-virtual {v0}, LDp;->a()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, LCH;->a:Z

    .line 23
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, LCH;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    invoke-virtual {v0}, LDp;->b()V

    .line 28
    iget-object v0, p0, LCH;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->u()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, LCH;->a:Z

    .line 30
    return-void
.end method
