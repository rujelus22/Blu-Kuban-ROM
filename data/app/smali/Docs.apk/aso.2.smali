.class public Laso;
.super Ljava/lang/Object;
.source "DocsXmlGDataParser.java"

# interfaces
.implements Lasm;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private a:Ljava/lang/String;

.field private final a:Lorg/xmlpull/v1/XmlPullParser;

.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Laso;->a:Ljava/io/InputStream;

    .line 77
    iput-object p2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 79
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A XmlGDataParser needs to be constructed with a namespace aware XmlPullParser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Laso;->a:Z

    .line 86
    iget-object v0, p0, Laso;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_24

    .line 88
    :try_start_1e
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_24} :catch_25

    .line 93
    :cond_24
    return-void

    .line 89
    :catch_25
    move-exception v0

    .line 90
    new-instance v1, Lasn;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 748
    invoke-static {p0, p1}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 744
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lasf;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laso;->a:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 200
    :goto_11
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    .line 201
    packed-switch v1, :pswitch_data_40

    .line 214
    :cond_17
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_11

    .line 203
    :pswitch_1e
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 207
    sget-object v2, Last;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 208
    invoke-direct {p0}, Laso;->d()Lasf;

    move-result-object v0

    .line 217
    :cond_3e
    return-object v0

    .line 201
    nop

    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_1e
    .end packed-switch
.end method

.method private final d()Lasf;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 232
    invoke-virtual {p0}, Laso;->a()Lasf;

    move-result-object v0

    .line 234
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://schemas.google.com/g/2005"

    sget-object v3, Last;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasf;->g(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 237
    :goto_19
    const/4 v2, 0x1

    if-eq v1, v2, :cond_ff

    .line 238
    packed-switch v1, :pswitch_data_106

    .line 290
    :cond_1f
    :goto_1f
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_19

    .line 242
    :pswitch_26
    invoke-virtual {p0, v0}, Laso;->a(Lasf;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 246
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v3, "http://a9.com/-/spec/opensearchrss/1.0/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string v3, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 252
    :cond_48
    sget-object v2, Last;->C:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 253
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lasg;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lasf;->a(I)V

    goto :goto_1f

    .line 255
    :cond_5e
    sget-object v2, Last;->D:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 256
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lasg;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lasf;->b(I)V

    goto :goto_1f

    .line 258
    :cond_74
    sget-object v2, Last;->E:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 259
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lasg;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lasf;->c(I)V

    goto :goto_1f

    .line 262
    :cond_8a
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 263
    sget-object v2, Last;->q:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 264
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasf;->f(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 265
    :cond_a5
    sget-object v2, Last;->p:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 266
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasf;->d(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 267
    :cond_b8
    sget-object v2, Last;->A:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 268
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasf;->e(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 269
    :cond_cb
    sget-object v2, Last;->w:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 270
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->x:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 273
    invoke-virtual {v0, v1}, Lasf;->b(Ljava/lang/String;)V

    .line 275
    :cond_e4
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->y:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 278
    invoke-virtual {v0, v1}, Lasf;->c(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 280
    :cond_f7
    sget-object v2, Last;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 293
    :cond_ff
    return-object v0

    .line 285
    :cond_100
    invoke-virtual {p0, v0}, Laso;->a(Lasf;)V

    goto/16 :goto_1f

    .line 238
    nop

    :pswitch_data_106
    .packed-switch 0x2
        :pswitch_26
    .end packed-switch
.end method

.method private d(Lase;)V
    .registers 5
    .parameter

    .prologue
    .line 677
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 678
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 680
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    sget-object v0, Last;->t:Ljava/lang/String;

    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 683
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <author>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_41
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 689
    :goto_47
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    .line 690
    packed-switch v0, :pswitch_data_8e

    .line 710
    :cond_4d
    :goto_4d
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_47

    .line 692
    :pswitch_54
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 693
    sget-object v1, Last;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 694
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-virtual {p1, v0}, Lase;->k(Ljava/lang/String;)V

    goto :goto_4d

    .line 696
    :cond_6c
    sget-object v1, Last;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 697
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p1, v0}, Lase;->z(Ljava/lang/String;)V

    goto :goto_4d

    .line 702
    :pswitch_7e
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 703
    sget-object v1, Last;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 712
    :cond_8c
    return-void

    .line 690
    nop

    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_54
        :pswitch_7e
    .end packed-switch
.end method

.method private e(Lase;)V
    .registers 6
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 717
    sget-object v1, Last;->G:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 718
    new-instance v0, Lask;

    invoke-direct {v0}, Lask;-><init>()V

    .line 719
    invoke-static {p1, v0}, Lasl;->a(Lase;Lask;)V

    .line 720
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->H:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lask;->a(I)V

    .line 721
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->I:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lask;->a(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->J:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lask;->b(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Laso;->c()V

    .line 741
    :goto_3a
    return-void

    .line 725
    :cond_3b
    sget-object v1, Last;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 726
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasl;->a(Lase;Ljava/lang/String;)V

    goto :goto_3a

    .line 727
    :cond_4d
    sget-object v1, Last;->B:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 728
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Last;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasl;->b(Lase;Ljava/lang/String;)V

    goto :goto_3a

    .line 729
    :cond_61
    const-string v1, "interrupted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 730
    new-instance v0, Lasj;

    invoke-direct {v0}, Lasj;-><init>()V

    .line 731
    invoke-static {p1, v0}, Lasl;->a(Lase;Lasj;)V

    .line 732
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->I:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasj;->a(Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->K:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lasj;->c(I)V

    .line 734
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->L:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lasj;->b(I)V

    .line 735
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->M:Ljava/lang/String;

    invoke-static {v1, v2}, Laso;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lasj;->a(I)V

    .line 737
    invoke-virtual {p0}, Laso;->c()V

    goto :goto_3a

    .line 739
    :cond_a1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected batch element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a()Lase;
    .registers 2

    .prologue
    .line 182
    new-instance v0, Lase;

    invoke-direct {v0}, Lase;-><init>()V

    return-object v0
.end method

.method public a(Lase;)Lase;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 343
    invoke-virtual {p0}, Laso;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_f
    :try_start_f
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_14} :catch_35

    move-result v0

    .line 354
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    .line 355
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected event START_TAG: Actual event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lasn;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :catch_35
    move-exception v0

    .line 351
    new-instance v1, Lasn;

    const-string v2, "Could not parse entry."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 359
    :cond_3e
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 363
    sget-object v1, Last;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    sget-object v1, Last;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 365
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <entry> or <partial>: Actual element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lasn;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_73
    if-nez p1, :cond_85

    .line 370
    invoke-virtual {p0}, Laso;->a()Lase;

    move-result-object p1

    .line 376
    :goto_79
    :try_start_79
    sget-object v1, Last;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 377
    invoke-virtual {p0, p1}, Laso;->c(Lase;)V
    :try_end_84
    .catch Lasn; {:try_start_79 .. :try_end_84} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_84} :catch_b4

    .line 400
    :goto_84
    return-object p1

    .line 372
    :cond_85
    invoke-virtual {p1}, Lase;->a()V

    goto :goto_79

    .line 379
    :cond_89
    :try_start_89
    invoke-virtual {p0, p1}, Laso;->b(Lase;)V
    :try_end_8c
    .catch Lasn; {:try_start_89 .. :try_end_8c} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_8c} :catch_b4

    goto :goto_84

    .line 381
    :catch_8d
    move-exception v0

    .line 383
    :try_start_8e
    invoke-virtual {p0}, Laso;->a()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Laso;->b()V
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_97} :catch_b0

    .line 389
    :cond_97
    :goto_97
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse <entry>, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 384
    :catch_b0
    move-exception v1

    .line 387
    iput-boolean v2, p0, Laso;->a:Z

    goto :goto_97

    .line 390
    :catch_b4
    move-exception v0

    .line 392
    :try_start_b5
    invoke-virtual {p0}, Laso;->a()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {p0}, Laso;->b()V
    :try_end_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b5 .. :try_end_be} :catch_d7

    .line 398
    :cond_be
    :goto_be
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse <entry>, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 393
    :catch_d7
    move-exception v1

    .line 396
    iput-boolean v2, p0, Laso;->a:Z

    goto :goto_be
.end method

.method protected a()Lasf;
    .registers 2

    .prologue
    .line 173
    new-instance v0, Lasf;

    invoke-direct {v0}, Lasf;-><init>()V

    return-object v0
.end method

.method protected final a()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Laso;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 755
    :try_start_4
    iget-object v0, p0, Laso;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 760
    :cond_9
    :goto_9
    return-void

    .line 756
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method protected a(Lase;)V
    .registers 2
    .parameter

    .prologue
    .line 773
    return-void
.end method

.method protected a(Lasf;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lase;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 805
    return-void
.end method

.method public a()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    iget-boolean v2, p0, Laso;->a:Z

    if-eqz v2, :cond_7

    .line 333
    :goto_6
    return v1

    .line 330
    :cond_7
    :try_start_7
    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_c} :catch_13

    move-result v2

    .line 331
    if-eq v2, v0, :cond_11

    :goto_f
    move v1, v0

    goto :goto_6

    :cond_11
    move v0, v1

    goto :goto_f

    .line 332
    :catch_13
    move-exception v0

    goto :goto_6
.end method

.method protected a(Lase;)Z
    .registers 3
    .parameter

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lasf;)Z
    .registers 3
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lase;
    .registers 4

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Laso;->a:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Laso;->a()Lase;

    move-result-object v0

    .line 417
    :try_start_7
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_c} :catch_17

    move-result v1

    .line 421
    if-eqz v1, :cond_20

    .line 422
    new-instance v0, Lasn;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lasn;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :catch_17
    move-exception v0

    .line 419
    new-instance v1, Lasn;

    const-string v2, "Could not parse GData entry."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 427
    :cond_20
    :try_start_20
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_25} :catch_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3c

    move-result v1

    .line 433
    :goto_26
    const/4 v2, 0x1

    if-eq v1, v2, :cond_90

    .line 434
    packed-switch v1, :pswitch_data_98

    .line 467
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_31} :catch_87

    move-result v1

    goto :goto_26

    .line 428
    :catch_33
    move-exception v0

    .line 429
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 430
    :catch_3c
    move-exception v0

    .line 431
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 436
    :pswitch_45
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 437
    sget-object v2, Last;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 439
    :try_start_53
    invoke-virtual {p0, v0}, Laso;->b(Lase;)V
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_60

    .line 451
    :goto_56
    return-object v0

    .line 441
    :catch_57
    move-exception v0

    .line 442
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <partial> entry."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 444
    :catch_60
    move-exception v0

    .line 445
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <partial> entry."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 448
    :cond_69
    sget-object v2, Last;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 450
    :try_start_71
    invoke-virtual {p0, v0}, Laso;->c(Lase;)V
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7e

    goto :goto_56

    .line 452
    :catch_75
    move-exception v0

    .line 453
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 455
    :catch_7e
    move-exception v0

    .line 456
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 468
    :catch_87
    move-exception v0

    .line 469
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 472
    :cond_90
    new-instance v0, Lasn;

    const-string v1, "No <entry> found in document."

    invoke-direct {v0, v1}, Lasn;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_45
    .end packed-switch
.end method

.method public b()Lasf;
    .registers 4

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Laso;->a:Ljava/lang/String;

    .line 104
    :try_start_3
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_8} :catch_13

    move-result v0

    .line 108
    if-eqz v0, :cond_1c

    .line 109
    new-instance v0, Lasn;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lasn;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catch_13
    move-exception v0

    .line 106
    new-instance v1, Lasn;

    const-string v2, "Could not parse GData feed."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_21} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_38

    move-result v0

    .line 120
    :goto_22
    const/4 v1, 0x1

    if-eq v0, v1, :cond_97

    .line 121
    packed-switch v0, :pswitch_data_a0

    .line 150
    :cond_28
    :try_start_28
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2d} :catch_85
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_8e

    move-result v0

    goto :goto_22

    .line 115
    :catch_2f
    move-exception v0

    .line 116
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :catch_38
    move-exception v0

    .line 118
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :pswitch_41
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v1, Last;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 126
    :try_start_4f
    invoke-direct {p0}, Laso;->c()Lasf;
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_52} :catch_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5d

    move-result-object v0

    .line 134
    :goto_53
    return-object v0

    .line 127
    :catch_54
    move-exception v0

    .line 128
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <partial> feed start"

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :catch_5d
    move-exception v0

    .line 130
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <partial> feed start"

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 132
    :cond_66
    sget-object v1, Last;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 134
    :try_start_6e
    invoke-direct {p0}, Laso;->d()Lasf;
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_73
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7c

    move-result-object v0

    goto :goto_53

    .line 135
    :catch_73
    move-exception v0

    .line 136
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :catch_7c
    move-exception v0

    .line 139
    new-instance v1, Lasn;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :catch_85
    move-exception v0

    .line 152
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :catch_8e
    move-exception v0

    .line 154
    new-instance v1, Lasn;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :cond_97
    new-instance v0, Lasn;

    const-string v1, "No <feed> found in document."

    invoke-direct {v0, v1}, Lasn;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    nop

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 482
    invoke-virtual {p0}, Laso;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_e
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 489
    :goto_14
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 490
    packed-switch v0, :pswitch_data_30

    .line 497
    :cond_1a
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_14

    .line 492
    :pswitch_21
    sget-object v0, Last;->c:Ljava/lang/String;

    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 499
    :cond_2f
    return-void

    .line 490
    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

.method protected b(Lase;)V
    .registers 5
    .parameter

    .prologue
    .line 541
    sget-object v0, Last;->a:Ljava/lang/String;

    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <partial>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_33
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    sget-object v2, Last;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laso;->a:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 551
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 552
    :goto_49
    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    .line 553
    packed-switch v0, :pswitch_data_68

    .line 563
    :cond_4f
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_49

    .line 555
    :pswitch_56
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 556
    sget-object v1, Last;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 557
    invoke-virtual {p0, p1}, Laso;->c(Lase;)V

    .line 565
    :cond_67
    return-void

    .line 553
    :pswitch_data_68
    .packed-switch 0x2
        :pswitch_56
    .end packed-switch
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 511
    const/4 v0, 0x1

    .line 512
    :goto_1
    if-lez v0, :cond_13

    .line 513
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 514
    packed-switch v1, :pswitch_data_14

    goto :goto_1

    .line 516
    :pswitch_d
    add-int/lit8 v0, v0, 0x1

    .line 517
    goto :goto_1

    .line 519
    :pswitch_10
    add-int/lit8 v0, v0, -0x1

    .line 520
    goto :goto_1

    .line 525
    :cond_13
    return-void

    .line 514
    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method protected c(Lase;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 581
    sget-object v0, Last;->c:Ljava/lang/String;

    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <entry>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_35
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Last;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->x(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Laso;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lase;->y(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 592
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 593
    :goto_52
    if-eq v0, v5, :cond_1a0

    .line 594
    packed-switch v0, :pswitch_data_1a6

    .line 669
    :cond_57
    :goto_57
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_52

    .line 596
    :pswitch_5e
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 597
    sget-object v1, Last;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 672
    :goto_6c
    return-void

    .line 603
    :cond_6d
    invoke-virtual {p0, p1}, Laso;->a(Lase;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 607
    const-string v1, "http://schemas.google.com/gdata/batch"

    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 610
    invoke-direct {p0, p1}, Laso;->e(Lase;)V

    goto :goto_57

    .line 611
    :cond_85
    sget-object v1, Last;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 612
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->s(Ljava/lang/String;)V

    goto :goto_57

    .line 613
    :cond_97
    sget-object v1, Last;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 614
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->v(Ljava/lang/String;)V

    goto :goto_57

    .line 615
    :cond_a9
    sget-object v1, Last;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 616
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Last;->h:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->l:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    iget-object v2, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v3, Last;->j:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    sget-object v3, Last;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 623
    invoke-virtual {p1, v2}, Lase;->q(Ljava/lang/String;)V

    goto :goto_57

    .line 624
    :cond_d5
    sget-object v3, Last;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    sget-object v3, Last;->o:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 626
    invoke-virtual {p1, v2}, Lase;->r(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 628
    :cond_ea
    invoke-virtual {p0, v0, v1, v2, p1}, Laso;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lase;)V

    goto/16 :goto_57

    .line 633
    :cond_ef
    sget-object v1, Last;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 634
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->u(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 635
    :cond_102
    sget-object v1, Last;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 636
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Last;->l:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->o(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Last;->m:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->p(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->n(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 639
    :cond_12b
    sget-object v1, Last;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 640
    invoke-direct {p0, p1}, Laso;->d(Lase;)V

    goto/16 :goto_57

    .line 641
    :cond_138
    sget-object v1, Last;->w:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 642
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Last;->x:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_153

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_153

    .line 645
    invoke-virtual {p1, v0}, Lase;->l(Ljava/lang/String;)V

    .line 647
    :cond_153
    iget-object v1, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Last;->y:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_57

    .line 652
    invoke-virtual {p1, v1}, Lase;->m(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 654
    :cond_168
    sget-object v1, Last;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 655
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->t(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 657
    :cond_17b
    sget-object v1, Last;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 658
    iget-object v0, p0, Laso;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lase;->w(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 659
    :cond_18e
    sget-object v1, Last;->F:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 660
    invoke-virtual {p1, v5}, Lase;->e(Z)V

    goto/16 :goto_57

    .line 662
    :cond_19b
    invoke-virtual {p0, p1}, Laso;->a(Lase;)V

    goto/16 :goto_57

    .line 671
    :cond_1a0
    invoke-virtual {p1}, Lase;->b()V

    goto/16 :goto_6c

    .line 594
    nop

    :pswitch_data_1a6
    .packed-switch 0x2
        :pswitch_5e
    .end packed-switch
.end method
