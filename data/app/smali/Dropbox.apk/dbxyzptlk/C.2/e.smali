.class public final Ldbxyzptlk/C/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/C/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    iput p1, p0, Ldbxyzptlk/C/e;->a:I

    iput-object p2, p0, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Ldbxyzptlk/C/e;->a:I

    packed-switch v1, :pswitch_data_4c

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_f
    const-string v1, "VALUE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_21
    const-string v1, "LEFT BRACE({)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_27
    const-string v1, "RIGHT BRACE(})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_2d
    const-string v1, "LEFT SQUARE([)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_33
    const-string v1, "RIGHT SQUARE(])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_39
    const-string v1, "COMMA(,)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_3f
    const-string v1, "COLON(:)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_45
    const-string v1, "END OF FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    nop

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_45
        :pswitch_f
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_3f
    .end packed-switch
.end method
