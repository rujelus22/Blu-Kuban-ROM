.class public LuJ;
.super Ljava/lang/Object;
.source "KixDiscussionAnchorManager.java"

# interfaces
.implements LuF;
.implements LxW;
.implements Lxx;


# instance fields
.field private final a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field private a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

.field private a:Luy;

.field private a:Lwb;

.field private final a:Lyj;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;Lyj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 42
    iput-object p2, p0, LuJ;->a:Lyj;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 207
    iget-object v1, p0, LuJ;->a:Lwb;

    if-nez v1, :cond_9

    .line 221
    :cond_8
    :goto_8
    return-object v0

    .line 210
    :cond_9
    iget-object v1, p0, LuJ;->a:Lwb;

    invoke-interface {v1}, Lwb;->a()Lvo;

    move-result-object v1

    .line 211
    invoke-interface {v1}, Lvo;->b()V

    .line 214
    :try_start_12
    iget-object v2, p0, LuJ;->a:Lwb;

    invoke-interface {v2, p1}, Lwb;->a(Ljava/lang/String;)[I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_39

    move-result-object v2

    .line 216
    invoke-interface {v1}, Lvo;->c()V

    .line 218
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    aget v1, v2, v5

    if-eq v1, v4, :cond_8

    aget v1, v2, v6

    if-eq v1, v4, :cond_8

    .line 221
    new-instance v0, Landroid/util/Pair;

    aget v1, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 216
    :catchall_39
    move-exception v0

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method private a(II)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v3

    .line 173
    if-eqz v3, :cond_65

    .line 175
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    if-eqz v0, :cond_23

    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, p1, :cond_23

    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-lt v0, p2, :cond_23

    .line 177
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;->a()Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_22
    return-object v1

    .line 179
    :cond_23
    const-class v0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;

    invoke-interface {v3, p1, p2, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;

    .line 180
    array-length v4, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    if-ge v2, v4, :cond_65

    aget-object v5, v0, v2

    .line 181
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, p1, :cond_61

    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lt v1, p2, :cond_61

    invoke-virtual {v5}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 184
    invoke-virtual {v5}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a()Ljava/util/List;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_61

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    invoke-virtual {v5, v1}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    goto :goto_22

    .line 180
    :cond_61
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e

    .line 195
    :cond_65
    const/4 v1, 0x0

    goto :goto_22
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v0

    .line 159
    iget-object v1, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v1

    .line 160
    invoke-direct {p0, v0, v1}, LuJ;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    .line 147
    return-void
.end method

.method public a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 48
    invoke-direct {p0, p1, p2}, LuJ;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    if-eqz v0, :cond_26

    .line 51
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_17
    if-eqz v2, :cond_25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 55
    iget-object v0, p0, LuJ;->a:Luy;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Luy;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    :cond_25
    return-void

    :cond_26
    move-object v0, v1

    goto :goto_17
.end method

.method public a(Luy;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, LuJ;->a:Luy;

    .line 73
    return-void
.end method

.method public a(Lwb;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwb;

    iput-object v0, p0, LuJ;->a:Lwb;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    if-eqz p1, :cond_5a

    .line 116
    invoke-direct {p0, p1}, LuJ;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_5a

    .line 119
    iget-object v3, p0, LuJ;->a:Lyj;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lyj;->a(I)I

    move-result v3

    .line 120
    iget-object v4, p0, LuJ;->a:Lyj;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lyj;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 121
    iget-object v2, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v2

    .line 122
    iget-object v4, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-interface {v2, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 123
    new-instance v4, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-direct {v4, p1, p2}, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    .line 124
    iget-object v4, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;

    invoke-interface {v2, v4, v3, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 126
    iget-object v1, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v1

    if-lt v1, v3, :cond_4e

    iget-object v1, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v1

    if-le v1, v0, :cond_53

    .line 127
    :cond_4e
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setSelection(I)V

    .line 130
    :cond_53
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->h()V

    .line 131
    const/4 v0, 0x1

    .line 140
    :goto_59
    return v0

    .line 136
    :cond_5a
    invoke-virtual {p0}, LuJ;->a()V

    .line 137
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setSelection(I)V

    .line 139
    iget-object v0, p0, LuJ;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->h()V

    move v0, v1

    .line 140
    goto :goto_59
.end method
