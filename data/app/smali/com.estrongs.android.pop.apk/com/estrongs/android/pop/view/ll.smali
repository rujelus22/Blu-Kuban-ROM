.class Lcom/estrongs/android/pop/view/ll;
.super Lcom/estrongs/android/pop/view/lv;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/view/lv;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/Object;)V
    .registers 13

    const-wide/32 v8, 0x100000

    const-wide/32 v6, 0x19000

    const/4 v1, 0x2

    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ll;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_9a

    iput p1, p0, Lcom/estrongs/android/pop/view/ll;->i:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v3, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v3, v0, Lcom/estrongs/android/pop/l;->b:J

    if-ne p1, v5, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v6, v0, Lcom/estrongs/android/pop/l;->b:J

    :goto_38
    return-void

    :cond_39
    if-ne p1, v1, :cond_4c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v6, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v8, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_38

    :cond_4c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v8, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    const-wide/32 v1, 0x1000000

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_38

    :cond_63
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    const-wide/32 v1, 0x1000000

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    const-wide/32 v1, 0x8000000

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_38

    :cond_7d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_94

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    const-wide/32 v1, 0x8000000

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v3, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_38

    :cond_94
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/view/ll;->a(Ljava/lang/String;)V

    goto :goto_38

    :cond_9a
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KB"

    aput-object v2, v0, v1

    const-string v1, "MB"

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const v2, 0x7f090194

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    const/16 v3, 0x200

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/ll;->a([Ljava/lang/String;Ljava/lang/String;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_38
.end method

.method protected a(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9

    const/high16 v3, 0x10

    const-string v0, "KB"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x400

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    :cond_15
    :goto_15
    const-string v0, "KB"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    mul-int/lit16 v1, p3, 0x400

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    :cond_28
    :goto_28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/view/lv;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2c
    const-string v0, "MB"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    mul-int v1, p1, v3

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    goto :goto_15

    :cond_40
    const-string v0, "MB"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    mul-int v1, p3, v3

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_28
.end method

.method a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ll;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ll;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->b:J

    :goto_2a
    return-void

    :cond_2b
    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ll;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_2a

    :cond_42
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ll;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ll;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    goto :goto_2a
.end method

.method b(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    const-string v2, "KB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/a/h;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    goto :goto_10

    :cond_25
    const-string v2, "MB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/a/h;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    goto :goto_10
.end method
