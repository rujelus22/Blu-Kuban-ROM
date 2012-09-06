.class Lcom/google/googlenav/ui/wizard/iD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iF;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iB;Lcom/google/googlenav/ui/wizard/iF;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iD;->b:Lcom/google/googlenav/ui/wizard/iB;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iD;->a:Lcom/google/googlenav/ui/wizard/iF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x4

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p2, :cond_4

    .line 154
    :goto_3
    return-void

    .line 129
    :cond_4
    const-string v0, "INVITE_EMAILS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 132
    array-length v4, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v4, :cond_1b

    aget-object v5, v1, v0

    .line 133
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 136
    :cond_1b
    new-instance v0, Lcom/google/googlenav/ui/wizard/iE;

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/ui/wizard/iE;-><init>(Lcom/google/googlenav/ui/wizard/iD;Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Ljava/util/Vector;)V

    .line 152
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iD;->b:Lcom/google/googlenav/ui/wizard/iB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iB;->a()V

    goto :goto_3
.end method
