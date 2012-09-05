.class public interface abstract Lcom/sec/android/app/sns/db/SnsDB;
.super Ljava/lang/Object;
.source "SnsDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns/db/SnsDB$DeepLink;,
        Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;,
        Lcom/sec/android/app/sns/db/SnsDB$AttachMedia;
    }
.end annotation


# static fields
.field public static final PROPERTYS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "prop_name1"

    aput-object v2, v1, v4

    const-string v2, "prop_text1"

    aput-object v2, v1, v5

    const-string v2, "prop_href1"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "prop_name2"

    aput-object v2, v1, v4

    const-string v2, "prop_text2"

    aput-object v2, v1, v5

    const-string v2, "prop_href2"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "prop_name3"

    aput-object v2, v1, v4

    const-string v2, "prop_text3"

    aput-object v2, v1, v5

    const-string v2, "prop_href3"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "prop_name4"

    aput-object v2, v1, v4

    const-string v2, "prop_text4"

    aput-object v2, v1, v5

    const-string v2, "prop_href4"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name5"

    aput-object v3, v2, v4

    const-string v3, "prop_text5"

    aput-object v3, v2, v5

    const-string v3, "prop_href5"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name6"

    aput-object v3, v2, v4

    const-string v3, "prop_text6"

    aput-object v3, v2, v5

    const-string v3, "prop_href6"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name7"

    aput-object v3, v2, v4

    const-string v3, "prop_text7"

    aput-object v3, v2, v5

    const-string v3, "prop_href7"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name8"

    aput-object v3, v2, v4

    const-string v3, "prop_text8"

    aput-object v3, v2, v5

    const-string v3, "prop_href8"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name9"

    aput-object v3, v2, v4

    const-string v3, "prop_text9"

    aput-object v3, v2, v5

    const-string v3, "prop_href9"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name10"

    aput-object v3, v2, v4

    const-string v3, "prop_text10"

    aput-object v3, v2, v5

    const-string v3, "prop_href10"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name11"

    aput-object v3, v2, v4

    const-string v3, "prop_text11"

    aput-object v3, v2, v5

    const-string v3, "prop_href11"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name12"

    aput-object v3, v2, v4

    const-string v3, "prop_text12"

    aput-object v3, v2, v5

    const-string v3, "prop_href12"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name13"

    aput-object v3, v2, v4

    const-string v3, "prop_text13"

    aput-object v3, v2, v5

    const-string v3, "prop_href13"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name14"

    aput-object v3, v2, v4

    const-string v3, "prop_text14"

    aput-object v3, v2, v5

    const-string v3, "prop_href14"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "prop_name15"

    aput-object v3, v2, v4

    const-string v3, "prop_text15"

    aput-object v3, v2, v5

    const-string v3, "prop_href15"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/db/SnsDB;->PROPERTYS:[[Ljava/lang/String;

    return-void
.end method
