.class public Ljava/util/ResourceBundle$Control;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control"
.end annotation


# static fields
.field public static final FORMAT_CLASS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control; = null

.field public static final FORMAT_DEFAULT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control; = null

.field public static final FORMAT_PROPERTIES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control; = null

.field static JAVACLASS:Ljava/lang/String; = null

.field static JAVAPROPERTIES:Ljava/lang/String; = null

.field public static final TTL_DONT_CACHE:J = -0x1L

.field public static final TTL_NO_EXPIRATION_CONTROL:J = -0x2L

.field static listClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    .line 697
    const-string v0, "java.class"

    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    .line 699
    const-string v0, "java.properties"

    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    .line 702
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 717
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    .line 723
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    .line 736
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 739
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 742
    new-instance v0, Ljava/util/ResourceBundle$Control;

    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 750
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    .line 752
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    .line 755
    return-void
.end method

.method public static getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 776
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 763
    :pswitch_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 764
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 772
    :goto_17
    return-object v0

    .line 766
    :cond_18
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 767
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 771
    :pswitch_23
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 772
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 761
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_23
    .end packed-switch
.end method

.method public static getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 799
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 786
    :pswitch_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 787
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 795
    :goto_17
    return-object v0

    .line 789
    :cond_18
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 790
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 794
    :pswitch_23
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 795
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 784
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .registers 8
    .parameter "baseName"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 807
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 808
    :cond_4
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 810
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v2, retList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, variant:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 815
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_2b
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 818
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_3b
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 821
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_4b
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    return-object v2
.end method

.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .parameter "baseName"
    .parameter "locale"

    .prologue
    .line 841
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 842
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 844
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eq v0, p2, :cond_15

    .line 845
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 847
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "baseName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    if-nez p1, :cond_8

    .line 832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 834
    :cond_8
    iget-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    return-object v0
.end method

.method public getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .registers 5
    .parameter "baseName"
    .parameter "locale"

    .prologue
    .line 941
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 942
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 944
    :cond_a
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .registers 16
    .parameter "baseName"
    .parameter "locale"
    .parameter "format"
    .parameter "loader"
    .parameter "bundle"
    .parameter "loadTime"

    .prologue
    .line 967
    if-nez p5, :cond_8

    .line 969
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 971
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, bundleName:Ljava/lang/String;
    move-object v4, p3

    .line 973
    .local v4, suffix:Ljava/lang/String;
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 974
    const-string v4, "class"

    .line 976
    :cond_17
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 977
    const-string v4, "properties"

    .line 979
    :cond_21
    invoke-virtual {p0, v0, v4}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 980
    .local v6, urlname:Ljava/lang/String;
    invoke-virtual {p4, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 981
    .local v5, url:Ljava/net/URL;
    if-eqz v5, :cond_3e

    .line 982
    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, fileName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 984
    .local v2, lastModified:J
    cmp-long v7, v2, p6

    if-lez v7, :cond_3e

    .line 985
    const/4 v7, 0x1

    .line 988
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #lastModified:J
    :goto_3d
    return v7

    :cond_3e
    const/4 v7, 0x0

    goto :goto_3d
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .registers 17
    .parameter "baseName"
    .parameter "locale"
    .parameter "format"
    .parameter "loader"
    .parameter "reload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    if-eqz p3, :cond_4

    if-nez p4, :cond_a

    .line 876
    :cond_4
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 878
    :cond_a
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, bundleName:Ljava/lang/String;
    move-object v3, p4

    .line 881
    .local v3, clsloader:Ljava/lang/ClassLoader;
    sget-object v10, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 882
    const/4 v2, 0x0

    .line 884
    .local v2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_18
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_75
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1b} :catch_77

    move-result-object v2

    .line 888
    :goto_1c
    if-nez v2, :cond_20

    .line 889
    const/4 v0, 0x0

    .line 931
    .end local v2           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1f
    return-object v0

    .line 892
    .restart local v2       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_20
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    .line 893
    .local v0, bundle:Ljava/util/ResourceBundle;
    #calls: Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    invoke-static {v0, p2}, Ljava/util/ResourceBundle;->access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_1f

    .line 895
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    :catch_2a
    move-exception v5

    .line 896
    .local v5, e:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_1f

    .line 899
    .end local v2           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #e:Ljava/lang/NullPointerException;
    :cond_2d
    sget-object v10, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 900
    const/4 v8, 0x0

    .line 901
    .local v8, streams:Ljava/io/InputStream;
    const-string v10, "properties"

    invoke-virtual {p0, v1, v10}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 902
    .local v6, resourceName:Ljava/lang/String;
    if-eqz p5, :cond_65

    .line 903
    const/4 v9, 0x0

    .line 905
    .local v9, url:Ljava/net/URL;
    :try_start_3f
    invoke-virtual {p4, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_42} :catch_79

    move-result-object v9

    .line 909
    :goto_43
    if-eqz v9, :cond_51

    .line 910
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 911
    .local v4, con:Ljava/net/URLConnection;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 912
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 921
    .end local v4           #con:Ljava/net/URLConnection;
    .end local v9           #url:Ljava/net/URL;
    :cond_51
    :goto_51
    if-eqz v8, :cond_6d

    .line 923
    :try_start_53
    new-instance v7, Ljava/util/PropertyResourceBundle;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V

    .line 924
    .local v7, ret:Ljava/util/ResourceBundle;
    #calls: Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    invoke-static {v7, p2}, Ljava/util/ResourceBundle;->access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V

    .line 925
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_6a

    move-object v0, v7

    .line 929
    goto :goto_1f

    .line 916
    .end local v7           #ret:Ljava/util/ResourceBundle;
    :cond_65
    :try_start_65
    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_65 .. :try_end_68} :catch_7b

    move-result-object v8

    goto :goto_51

    .line 926
    :catch_6a
    move-exception v5

    .line 927
    .local v5, e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_1f

    .line 931
    .end local v5           #e:Ljava/io/IOException;
    :cond_6d
    const/4 v0, 0x0

    goto :goto_1f

    .line 933
    .end local v6           #resourceName:Ljava/lang/String;
    .end local v8           #streams:Ljava/io/InputStream;
    :cond_6f
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 885
    .restart local v2       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_75
    move-exception v10

    goto :goto_1c

    .line 886
    :catch_77
    move-exception v10

    goto :goto_1c

    .line 906
    .end local v2           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #resourceName:Ljava/lang/String;
    .restart local v8       #streams:Ljava/io/InputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_79
    move-exception v10

    goto :goto_43

    .line 917
    .end local v9           #url:Ljava/net/URL;
    :catch_7b
    move-exception v10

    goto :goto_51
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .parameter "baseName"
    .parameter "locale"

    .prologue
    .line 1003
    const-string v0, ""

    .line 1004
    .local v0, emptyString:Ljava/lang/String;
    const-string v1, "_"

    .line 1005
    .local v1, preString:Ljava/lang/String;
    const-string v4, "_"

    .line 1006
    .local v4, underline:Ljava/lang/String;
    if-nez p1, :cond_e

    .line 1007
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1009
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local v3, ret:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    .local v2, prefix:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 1013
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :goto_33
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 1019
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1020
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #prefix:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .restart local v2       #prefix:Ljava/lang/StringBuilder;
    :goto_53
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 1027
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1028
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :cond_6e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1016
    :cond_73
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 1024
    :cond_79
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53
.end method

.method public final toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "bundleName"
    .parameter "suffix"

    .prologue
    const/16 v2, 0x2e

    .line 1046
    if-nez p2, :cond_a

    .line 1047
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1049
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
