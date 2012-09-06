.class Lcom/google/android/maps/driveabout/app/U;
.super Lcom/google/android/maps/driveabout/app/R;
.source "SourceFile"


# static fields
.field static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 941
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/app/U;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/R;-><init>(Landroid/content/Context;)V

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    if-eqz p2, :cond_14

    .line 950
    const v1, 0x7f0d00c6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/W;->a(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_14
    invoke-static {}, Lcom/google/android/maps/driveabout/app/W;->a()Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/U;->a(Ljava/util/ArrayList;)V

    .line 955
    new-instance v0, Lcom/google/android/maps/driveabout/app/V;

    invoke-direct {v0, p0, p2}, Lcom/google/android/maps/driveabout/app/V;-><init>(Lcom/google/android/maps/driveabout/app/U;Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/V;->start()V

    .line 961
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/U;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/U;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 964
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/U;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/maps/driveabout/app/U;->e:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/postal-address_v2\' AND in_visible_group=1"

    const-string v5, "display_name, is_super_primary desc, is_primary desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 967
    if-eqz p1, :cond_26

    .line 968
    const v2, 0x7f0d00c6

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/W;->a(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_26
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 974
    if-eqz v0, :cond_55

    .line 975
    :cond_2d
    :goto_2d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 976
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 977
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 978
    if-eqz v3, :cond_2d

    if-eqz v5, :cond_2d

    .line 979
    new-instance v7, Lo/P;

    invoke-direct {v7, v5, v4, v3, v4}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 981
    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/app/W;->a(Lo/P;I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 985
    :cond_52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_55
    if-eqz p1, :cond_6c

    move v0, v6

    .line 991
    :goto_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_68

    .line 992
    const v0, 0x7f0d00d4

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/W;->c(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_68
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/U;->b(Ljava/util/ArrayList;)V

    .line 995
    return-void

    .line 990
    :cond_6c
    const/4 v0, 0x0

    goto :goto_58
.end method
