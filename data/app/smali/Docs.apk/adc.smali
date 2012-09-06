.class public Ladc;
.super Laeo;
.source "HttpHeaders.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Laes;
        a = "Accept-Encoding"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Laes;
        a = "Content-Type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Laes;
        a = "Location"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Laes;
        a = "User-Agent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Laer;->a:Laer;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Laeo;-><init>(Ljava/util/EnumSet;)V

    .line 67
    const-string v0, "gzip"

    iput-object v0, p0, Ladc;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {p1, p0}, Laeh;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 868
    invoke-static {v0, p2}, Laeh;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ladc;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ladr;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ladc;->a(Ladc;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ladr;Ljava/io/Writer;)V

    .line 673
    return-void
.end method

.method private static a(Ladc;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ladr;Ljava/io/Writer;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 693
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 694
    invoke-virtual {p0}, Ladc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 695
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 696
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "multiple headers of the same name (headers are case insensitive): %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 698
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 699
    if-eqz v4, :cond_d

    .line 702
    invoke-virtual {p0}, Ladc;->a()Laef;

    move-result-object v0

    invoke-virtual {v0, v1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_78

    .line 704
    invoke-virtual {v0}, Laen;->a()Ljava/lang/String;

    move-result-object v3

    .line 706
    :goto_42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 707
    instance-of v1, v4, Ljava/lang/Iterable;

    if-nez v1, :cond_50

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 708
    :cond_50
    invoke-static {v4}, Laez;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_58
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 709
    invoke-static/range {v0 .. v5}, Ladc;->a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Ladr;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_58

    :cond_6a
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 712
    invoke-static/range {v0 .. v5}, Ladc;->a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Ladr;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_d

    .line 716
    :cond_72
    if-eqz p4, :cond_77

    .line 717
    invoke-virtual {p4}, Ljava/io/Writer;->flush()V

    .line 719
    :cond_77
    return-void

    :cond_78
    move-object v3, v1

    goto :goto_42
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Ladr;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    if-eqz p4, :cond_8

    invoke-static {p4}, Laeh;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 656
    :cond_8
    :goto_8
    return-void

    .line 633
    :cond_9
    instance-of v0, p4, Ljava/lang/Enum;

    if-eqz v0, :cond_54

    check-cast p4, Ljava/lang/Enum;

    invoke-static {p4}, Laen;->a(Ljava/lang/Enum;)Laen;

    move-result-object v0

    invoke-virtual {v0}, Laen;->a()Ljava/lang/String;

    move-result-object v0

    .line 636
    :goto_17
    if-eqz p1, :cond_3c

    .line 637
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 639
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :goto_37
    sget-object v1, Laey;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_3c
    if-eqz p2, :cond_41

    .line 647
    invoke-virtual {p2, p3, v0}, Ladr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_41
    if-eqz p5, :cond_8

    .line 651
    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 652
    const-string v1, ": "

    invoke-virtual {p5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 654
    const-string v0, "\r\n"

    invoke-virtual {p5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 633
    :cond_54
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 641
    :cond_59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method


# virtual methods
.method public a()Ladc;
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Laeo;->a()Laeo;

    move-result-object v0

    check-cast v0, Ladc;

    return-object v0
.end method

.method public bridge synthetic a()Laeo;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Ladc;->a()Ladc;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Ladc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lads;Ljava/lang/StringBuilder;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 730
    new-instance v1, Ladd;

    invoke-direct {v1, p0, p2}, Ladd;-><init>(Ladc;Ljava/lang/StringBuilder;)V

    .line 731
    invoke-virtual {p1}, Lads;->b()I

    move-result v2

    .line 732
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_1a

    .line 733
    invoke-virtual {p1, v0}, Lads;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lads;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v1}, Ladc;->a(Ljava/lang/String;Ljava/lang/String;Ladd;)V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 735
    :cond_1a
    invoke-virtual {v1}, Ladd;->a()V

    .line 736
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Ladc;->d:Ljava/lang/String;

    .line 589
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ladd;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 820
    iget-object v2, p3, Ladd;->a:Ljava/util/List;

    .line 821
    iget-object v0, p3, Ladd;->a:Laef;

    .line 822
    iget-object v1, p3, Ladd;->a:Laed;

    .line 823
    iget-object v3, p3, Ladd;->a:Ljava/lang/StringBuilder;

    .line 825
    if-eqz v3, :cond_2a

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laey;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_2a
    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v3

    .line 830
    if-eqz v3, :cond_87

    .line 831
    invoke-virtual {v3}, Laen;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v2, v0}, Laeh;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 833
    invoke-static {v4}, Laez;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 835
    invoke-static {v4}, Laez;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v2, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 837
    invoke-virtual {v3}, Laen;->a()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v0, v2, p2}, Ladc;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Laed;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 864
    :goto_51
    return-void

    .line 839
    :cond_52
    invoke-static {v2, v4}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Laez;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 843
    invoke-virtual {v3, p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 844
    if-nez v0, :cond_6d

    .line 845
    invoke-static {v4}, Laeh;->a(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 846
    invoke-virtual {v3, p0, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 848
    :cond_6d
    const-class v1, Ljava/lang/Object;

    if-ne v4, v1, :cond_7a

    const/4 v1, 0x0

    .line 849
    :goto_72
    invoke-static {v1, v2, p2}, Ladc;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 848
    :cond_7a
    invoke-static {v4}, Laez;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_72

    .line 852
    :cond_7f
    invoke-static {v4, v2, p2}, Ladc;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_51

    .line 857
    :cond_87
    invoke-virtual {p0, p1}, Ladc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 858
    if-nez v0, :cond_97

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    invoke-virtual {p0, p1, v0}, Ladc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    :cond_97
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Ladc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Ladc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Ladc;->a()Ladc;

    move-result-object v0

    return-object v0
.end method
