.class public LaC/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z

.field private final e:LaC/O;


# direct methods
.method public constructor <init>(Ljava/lang/String;LaC/O;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, LaC/N;->a:Ljava/lang/String;

    .line 81
    iput-object p1, p0, LaC/N;->b:Ljava/lang/String;

    .line 82
    iput v0, p0, LaC/N;->c:I

    .line 83
    iput-boolean v0, p0, LaC/N;->d:Z

    .line 84
    iput-object p2, p0, LaC/N;->e:LaC/O;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILaC/O;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, LaC/N;->a:Ljava/lang/String;

    .line 73
    iput-object p2, p0, LaC/N;->b:Ljava/lang/String;

    .line 74
    iput p3, p0, LaC/N;->c:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, LaC/N;->d:Z

    .line 76
    iput-object p4, p0, LaC/N;->e:LaC/O;

    .line 77
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaC/O;)LaC/N;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, LaC/N;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, LaC/N;-><init>(Ljava/lang/String;Ljava/lang/String;ILaC/O;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;LaC/N;Landroid/view/View$OnClickListener;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_26

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {p1}, LaC/N;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    const v0, 0x5245464d

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f100345

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LaC/N;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_26
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, LaC/N;->d:Z

    if-eqz v0, :cond_7

    .line 148
    const-string v0, "cf"

    .line 150
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "t"

    goto :goto_6
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 107
    iget-boolean v0, p0, LaC/N;->d:Z

    if-eqz v0, :cond_6

    .line 110
    const/4 v0, 0x0

    .line 119
    :cond_5
    :goto_5
    return-object v0

    .line 112
    :cond_6
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fa;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 114
    const/4 v1, 0x3

    iget v2, p0, LaC/N;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 115
    iget-object v1, p0, LaC/N;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 116
    const/4 v1, 0x1

    iget-object v2, p0, LaC/N;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, LaC/N;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, LaC/N;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, LaC/N;->e:LaC/O;

    if-nez v0, :cond_6

    .line 162
    const/4 v0, 0x0

    .line 183
    :goto_5
    return-object v0

    .line 165
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LaC/N;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, LaC/N;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaC/N;->e:LaC/O;

    invoke-virtual {v2}, LaC/O;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, LaC/N;->e:LaC/O;

    invoke-virtual {v1}, LaC/O;->b()I

    move-result v1

    if-ltz v1, :cond_7f

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaC/N;->e:LaC/O;

    invoke-virtual {v2}, LaC/O;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_7f
    iget-object v1, p0, LaC/N;->e:LaC/O;

    invoke-virtual {v1}, LaC/O;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaC/N;->e:LaC/O;

    invoke-virtual {v2}, LaC/O;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_a3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, LaC/N;->d:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, LaC/N;->d:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
