.class public LaM/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LaM/al;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LaM/al;
    .registers 1

    .prologue
    .line 17
    sget-object v0, LaM/al;->a:LaM/al;

    return-object v0
.end method

.method public static a(LaM/al;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    sput-object p0, LaM/al;->a:LaM/al;

    .line 26
    return-void
.end method


# virtual methods
.method public a(LaM/i;Lah/s;)LaM/w;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    .line 67
    :pswitch_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :pswitch_20
    const/4 v0, 0x0

    .line 65
    :goto_21
    return-object v0

    .line 45
    :pswitch_22
    new-instance v0, LaM/aY;

    invoke-direct {v0, p1}, LaM/aY;-><init>(LaM/i;)V

    goto :goto_21

    .line 48
    :pswitch_28
    new-instance v0, LaM/aH;

    invoke-direct {v0, p1, p2}, LaM/aH;-><init>(LaM/i;Lah/s;)V

    goto :goto_21

    .line 51
    :pswitch_2e
    new-instance v0, LaM/bE;

    check-cast p1, LaM/bH;

    invoke-direct {v0, p1}, LaM/bE;-><init>(LaM/bH;)V

    goto :goto_21

    .line 54
    :pswitch_36
    new-instance v0, LaM/aj;

    invoke-direct {v0, p1}, LaM/aj;-><init>(LaM/i;)V

    goto :goto_21

    .line 57
    :pswitch_3c
    new-instance v0, LaM/A;

    invoke-direct {v0, p1}, LaM/A;-><init>(LaM/i;)V

    goto :goto_21

    .line 60
    :pswitch_42
    new-instance v0, LaM/R;

    invoke-direct {v0, p1}, LaM/R;-><init>(LaM/i;)V

    goto :goto_21

    .line 63
    :pswitch_48
    new-instance v0, LaM/E;

    check-cast p1, LaM/O;

    invoke-direct {v0, p1}, LaM/E;-><init>(LaM/O;)V

    goto :goto_21

    .line 65
    :pswitch_50
    new-instance v0, LaM/bJ;

    check-cast p1, LaM/bK;

    invoke-direct {v0, p1}, LaM/bJ;-><init>(LaM/bK;)V

    goto :goto_21

    .line 30
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_22
        :pswitch_48
        :pswitch_22
        :pswitch_42
        :pswitch_7
        :pswitch_20
        :pswitch_22
        :pswitch_22
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_22
        :pswitch_7
        :pswitch_3c
        :pswitch_7
        :pswitch_36
        :pswitch_22
        :pswitch_7
        :pswitch_22
        :pswitch_20
        :pswitch_7
        :pswitch_50
        :pswitch_20
        :pswitch_22
        :pswitch_2e
        :pswitch_7
        :pswitch_28
    .end packed-switch
.end method
