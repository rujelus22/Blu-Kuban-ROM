.class public LaC/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/ui/wizard/F;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/F;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, LaC/d;->a:I

    .line 151
    if-eqz p2, :cond_14

    :goto_7
    iput-object p2, p0, LaC/d;->b:Ljava/lang/String;

    .line 152
    if-eqz p3, :cond_17

    :goto_b
    iput-object p3, p0, LaC/d;->c:Ljava/lang/String;

    .line 153
    iput-object p5, p0, LaC/d;->e:Landroid/view/View$OnClickListener;

    .line 154
    iput-object p6, p0, LaC/d;->f:Landroid/view/View$OnLongClickListener;

    .line 155
    iput-object p4, p0, LaC/d;->d:Lcom/google/googlenav/ui/wizard/F;

    .line 156
    return-void

    .line 151
    :cond_14
    const-string p2, ""

    goto :goto_7

    .line 152
    :cond_17
    const-string p3, ""

    goto :goto_b
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, LaC/d;->d:Lcom/google/googlenav/ui/wizard/F;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 168
    const v1, 0x7f100179

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    const v2, 0x7f100334

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    iget v3, p0, LaC/d;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, LaC/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, LaC/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, LaC/d;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_38

    .line 175
    iget-object v0, p0, LaC/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_38
    iget-object v0, p0, LaC/d;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_41

    .line 179
    iget-object v0, p0, LaC/d;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    :cond_41
    return-object p1
.end method
