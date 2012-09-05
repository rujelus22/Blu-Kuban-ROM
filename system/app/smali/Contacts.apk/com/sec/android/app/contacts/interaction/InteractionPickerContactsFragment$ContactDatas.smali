.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactDatas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;
    }
.end annotation


# instance fields
.field includingPrimaryContact:Z

.field public mAccountType:Ljava/lang/String;

.field public mAvailableDataCount:I

.field public mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayNameAlt:Ljava/lang/String;

.field public mPartition:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field singleData:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 7
    .parameter
    .parameter "cursor"
    .parameter "partition"
    .parameter "uri"
    .parameter "flag"

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mAvailableDataCount:I

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    .line 1054
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1055
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDisplayName:Ljava/lang/String;

    .line 1056
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    .line 1058
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    .line 1060
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->setPrimaryContact(Landroid/database/Cursor;)V

    .line 1061
    invoke-direct {p0, p2, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->makeDataSet(Landroid/database/Cursor;Z)V

    .line 1064
    :cond_31
    iput-object p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mPartition:Ljava/lang/String;

    .line 1065
    iput-object p4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mUri:Landroid/net/Uri;

    .line 1066
    return-void
.end method

.method private makeDataSet(Landroid/database/Cursor;Z)V
    .registers 6
    .parameter "cursor"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    .line 1096
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->move(I)Z

    .line 1097
    :cond_5
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1098
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->singleData:Z

    if-eqz v1, :cond_13

    .line 1099
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->saveDataType(Landroid/database/Cursor;)V

    goto :goto_5

    .line 1101
    :cond_13
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_29

    .line 1102
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1104
    .local v0, primary:I
    if-lez v0, :cond_5

    .line 1105
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->saveDataType(Landroid/database/Cursor;)V

    .line 1106
    if-ne p2, v2, :cond_5

    .line 1116
    .end local v0           #primary:I
    :cond_28
    :goto_28
    return-void

    .line 1110
    :cond_29
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->saveDataType(Landroid/database/Cursor;)V

    .line 1111
    if-ne p2, v2, :cond_5

    goto :goto_28
.end method

.method private saveData(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1146
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;)V

    .line 1147
    .local v0, dataInfo:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    .line 1148
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 1149
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    .line 1151
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 1152
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    .line 1153
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 1154
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->dataType:I

    .line 1155
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 1157
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mAvailableDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mAvailableDataCount:I

    .line 1160
    return-void
.end method

.method private saveDataType(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    const/16 v2, 0x9

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    .line 1143
    :cond_b
    :goto_b
    return-void

    .line 1121
    :sswitch_c
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1123
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_b

    .line 1127
    :sswitch_1c
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1129
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_b

    .line 1133
    :sswitch_2c
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1137
    :cond_44
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_b

    .line 1119
    :sswitch_data_48
    .sparse-switch
        0x96 -> :sswitch_2c
        0xa0 -> :sswitch_c
        0xaa -> :sswitch_1c
    .end sparse-switch
.end method

.method private setPrimaryContact(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, addData:I
    const/4 v2, 0x0

    .line 1071
    .local v2, primary:I
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->move(I)Z

    .line 1072
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v5, :cond_47

    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->singleData:Z

    .line 1073
    const-string v3, "InteractionPickerContactsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "singleData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->singleData:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_2b
    :goto_2b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1075
    const-string v3, "InteractionPickerContactsFragment"

    const-string v6, "cursor load "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/16 v3, 0x8

    :try_start_3a
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_41} :catch_49

    move-result v2

    .line 1083
    if-lez v2, :cond_2b

    .line 1084
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_47
    move v3, v5

    .line 1072
    goto :goto_f

    .line 1079
    :catch_49
    move-exception v1

    .line 1080
    .local v1, e:Ljava/lang/NumberFormatException;
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->includingPrimaryContact:Z

    .line 1093
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4c
    :goto_4c
    return-void

    .line 1087
    :cond_4d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1088
    if-nez v0, :cond_55

    .line 1089
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->includingPrimaryContact:Z

    goto :goto_4c

    .line 1090
    :cond_55
    if-lt v0, v5, :cond_4c

    .line 1091
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->includingPrimaryContact:Z

    goto :goto_4c
.end method
