.class public abstract Lcom/google/zxing/c/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/zxing/common/a;

.field protected final b:Lcom/google/zxing/c/a/a/a/s;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/zxing/c/a/a/a/j;->a:Lcom/google/zxing/common/a;

    .line 43
    new-instance v0, Lcom/google/zxing/c/a/a/a/s;

    invoke-direct {v0, p1}, Lcom/google/zxing/c/a/a/a/s;-><init>(Lcom/google/zxing/common/a;)V

    iput-object v0, p0, Lcom/google/zxing/c/a/a/a/j;->b:Lcom/google/zxing/c/a/a/a/s;

    .line 44
    return-void
.end method

.method public static a(Lcom/google/zxing/common/a;)Lcom/google/zxing/c/a/a/a/j;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    new-instance v0, Lcom/google/zxing/c/a/a/a/g;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/g;-><init>(Lcom/google/zxing/common/a;)V

    .line 78
    :goto_c
    return-object v0

    .line 52
    :cond_d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 53
    new-instance v0, Lcom/google/zxing/c/a/a/a/k;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/k;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_c

    .line 56
    :cond_1a
    const/4 v0, 0x4

    invoke-static {p0, v1, v0}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    .line 58
    packed-switch v0, :pswitch_data_b4

    .line 63
    const/4 v0, 0x5

    invoke-static {p0, v1, v0}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    .line 64
    packed-switch v0, :pswitch_data_bc

    .line 69
    const/4 v0, 0x7

    invoke-static {p0, v1, v0}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    .line 70
    packed-switch v0, :pswitch_data_c4

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "unknown decoder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_47
    new-instance v0, Lcom/google/zxing/c/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/a;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_c

    .line 60
    :pswitch_4d
    new-instance v0, Lcom/google/zxing/c/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/b;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_c

    .line 65
    :pswitch_53
    new-instance v0, Lcom/google/zxing/c/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/c;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_c

    .line 66
    :pswitch_59
    new-instance v0, Lcom/google/zxing/c/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/d;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_c

    .line 71
    :pswitch_5f
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "310"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 72
    :pswitch_69
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "320"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 73
    :pswitch_73
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "310"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 74
    :pswitch_7d
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "320"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 75
    :pswitch_87
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "310"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 76
    :pswitch_92
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "320"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 77
    :pswitch_9d
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "310"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 78
    :pswitch_a8
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    const-string v1, "320"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 58
    nop

    :pswitch_data_b4
    .packed-switch 0x4
        :pswitch_47
        :pswitch_4d
    .end packed-switch

    .line 64
    :pswitch_data_bc
    .packed-switch 0xc
        :pswitch_53
        :pswitch_59
    .end packed-switch

    .line 70
    :pswitch_data_c4
    .packed-switch 0x38
        :pswitch_5f
        :pswitch_69
        :pswitch_73
        :pswitch_7d
        :pswitch_87
        :pswitch_92
        :pswitch_9d
        :pswitch_a8
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
