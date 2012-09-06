.class final Lcom/anddoes/launcher/ko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/TabConfigActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/TabConfigActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ko;->a:Lcom/anddoes/launcher/TabConfigActivity;

    iput p2, p0, Lcom/anddoes/launcher/ko;->b:I

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/ko;->a:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/TabConfigActivity;->d(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/kq;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    iget v1, p0, Lcom/anddoes/launcher/ko;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ca;

    .line 169
    iget-object v1, p0, Lcom/anddoes/launcher/ko;->a:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/TabConfigActivity;->a(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/preference/c;

    move-result-object v3

    iget-object v4, v0, Lcom/anddoes/launcher/ca;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/anddoes/launcher/preference/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    array-length v6, v5

    move v1, v2

    :goto_27
    if-lt v1, v6, :cond_92

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    const-string v1, "all_groups"

    invoke-virtual {v3, v1, v0}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_name_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/preference/c;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_isapp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/preference/c;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/preference/c;->e(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/anddoes/launcher/ko;->a:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/TabConfigActivity;->d(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/kq;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    iget v1, p0, Lcom/anddoes/launcher/ko;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/anddoes/launcher/ko;->a:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/TabConfigActivity;->d(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/kq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/kq;->notifyDataSetChanged()V

    .line 172
    iget-object v0, p0, Lcom/anddoes/launcher/ko;->a:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/TabConfigActivity;->c(Lcom/anddoes/launcher/TabConfigActivity;)V

    .line 173
    return-void

    .line 169
    :cond_92
    aget-object v7, v5, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_27
.end method
