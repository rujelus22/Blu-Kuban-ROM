.class public Lcom/google/android/apps/googlevoice/core/Label;
.super Ljava/lang/Object;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/core/Label$Comparator;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final COMPARATOR:Lcom/google/android/apps/googlevoice/core/Label$Comparator; = null

.field public static final DEFAULT_LABELS_TO_DISPLAY_FOR_FULL_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label; = null

.field public static final DEFAULT_LABELS_TO_DISPLAY_FOR_LITE_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label; = null

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final MISSED:Ljava/lang/String; = "missed"

.field public static final NO_LABELS:[Lcom/google/android/apps/googlevoice/core/Label; = null

.field public static final PLACED:Ljava/lang/String; = "placed"

.field public static final RECEIVED:Ljava/lang/String; = "received"

.field public static final RECORDED:Ljava/lang/String; = "recorded"

.field public static final SMS:Ljava/lang/String; = "sms"

.field public static final SPAM:Ljava/lang/String; = "spam"

.field public static final STARRED:Ljava/lang/String; = "starred"

.field public static final TRASH:Ljava/lang/String; = "trash"

.field public static final UNREAD:Ljava/lang/String; = "unread"

.field public static final VOICEMAIL:Ljava/lang/String; = "voicemail"

.field private static final defaultLabelsByLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ">;"
        }
    .end annotation
.end field

.field private static final moveToInboxAvailable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final priorityMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final titleResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

.field private conversations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 47
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    .line 48
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    .line 49
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->defaultLabelsByLabel:Ljava/util/Map;

    .line 50
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->moveToInboxAvailable:Ljava/util/Set;

    .line 53
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/android/apps/googlevoice/core/Label;

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->NO_LABELS:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 55
    new-instance v7, Lcom/google/android/apps/googlevoice/core/Label$Comparator;

    invoke-direct {v7}, Lcom/google/android/apps/googlevoice/core/Label$Comparator;-><init>()V

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Label$Comparator;

    .line 63
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "inbox"

    const/4 v9, -0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "starred"

    const/4 v9, -0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "voicemail"

    const/4 v9, -0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "sms"

    const/4 v9, -0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "recorded"

    const/4 v9, -0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "placed"

    const/4 v9, -0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "received"

    const/4 v9, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "missed"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "all"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "unread"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "spam"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    const-string v8, "trash"

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "inbox"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_inbox:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "starred"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_starred:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "voicemail"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_voicemail:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "sms"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_sms:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "recorded"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_recorded:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "placed"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_placed:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "received"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_received:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "missed"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_missed:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "all"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_all:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "unread"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_unread:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "spam"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_spam:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    const-string v8, "trash"

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->label_trash:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->moveToInboxAvailable:Ljava/util/Set;

    const-string v8, "voicemail"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->moveToInboxAvailable:Ljava/util/Set;

    const-string v8, "sms"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->moveToInboxAvailable:Ljava/util/Set;

    const-string v8, "recorded"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v6, labels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Label;>;"
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_17e
    :goto_17e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/apps/googlevoice/core/Label;->createDefaultLabel(Ljava/lang/String;I)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v5

    .line 103
    .local v5, label:Lcom/google/android/apps/googlevoice/core/Label;
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->defaultLabelsByLabel:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Label;->getPriority()I

    move-result v7

    if-gez v7, :cond_17e

    .line 105
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17e

    .line 108
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_1b1
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/core/Label;->inPriorityOrder(Ljava/util/List;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->DEFAULT_LABELS_TO_DISPLAY_FOR_FULL_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 111
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v3, ignoreLiteLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "sms"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v7, "received"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v7, "missed"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 116
    sget-object v7, Lcom/google/android/apps/googlevoice/core/Label;->defaultLabelsByLabel:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d8
    :goto_1d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_200

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Label;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/googlevoice/core/Label;

    .line 119
    .restart local v5       #label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d8

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Label;->getPriority()I

    move-result v7

    if-gez v7, :cond_1d8

    .line 120
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d8

    .line 123
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Label;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_200
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/core/Label;->inPriorityOrder(Ljava/util/List;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/googlevoice/core/Label;->DEFAULT_LABELS_TO_DISPLAY_FOR_LITE_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/core/Label;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)V
    .registers 3
    .parameter "apiLabel"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    .line 140
    const-string v0, "apiLabel"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/core/Label;->updatePriority()V

    .line 143
    return-void
.end method

.method public static createDefaultLabel(Ljava/lang/String;I)Lcom/google/android/apps/googlevoice/core/Label;
    .registers 6
    .parameter "label"
    .parameter "priority"

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    .line 128
    .local v0, apiLabel:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 129
    const-wide/high16 v1, -0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 130
    invoke-virtual {v0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setTotalCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 131
    invoke-virtual {v0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setUnreadCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 132
    new-instance v1, Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/googlevoice/core/Label;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)V

    return-object v1
.end method

.method public static getDefaultLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2
    .parameter "label"

    .prologue
    .line 343
    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->defaultLabelsByLabel:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Label;

    return-object v0
.end method

.method private static getPriorityForLabel(Ljava/lang/String;)I
    .registers 3
    .parameter "label"

    .prologue
    .line 333
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Label;->priorityMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 334
    .local v0, priority:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 337
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static inPriorityOrder(Ljava/util/List;)[Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ">;)[",
            "Lcom/google/android/apps/googlevoice/core/Label;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, labels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Label;>;"
    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Label$Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 317
    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->NO_LABELS:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/core/Label;

    return-object v0
.end method

.method private static isMoveToInboxAvailableForLabel(Ljava/lang/String;)Z
    .registers 2
    .parameter "labelName"

    .prologue
    .line 308
    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->moveToInboxAvailable:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mergeLabelArrays([Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Label;
    .registers 9
    .parameter "labelsOne"
    .parameter "labelsTwo"

    .prologue
    .line 353
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v3, labelsByLabel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Label;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v4, :cond_16

    aget-object v2, v0, v1

    .line 355
    .local v2, label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 357
    .end local v2           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_16
    move-object v0, p0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v4, :cond_27

    aget-object v2, v0, v1

    .line 358
    .restart local v2       #label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 360
    .end local v2           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_27
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/googlevoice/core/Label;>;"
    sget-object v6, Lcom/google/android/apps/googlevoice/core/Label;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Label$Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    sget-object v6, Lcom/google/android/apps/googlevoice/core/Label;->NO_LABELS:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/apps/googlevoice/core/Label;

    return-object v6
.end method

.method private updatePriority()V
    .registers 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, label:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getPriorityForLabel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->priority:I

    .line 324
    return-void
.end method


# virtual methods
.method public addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 8
    .parameter "conversation"
    .parameter "update"

    .prologue
    .line 152
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 155
    if-eqz p2, :cond_1e

    .line 156
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->incrementUnreadCount()V

    .line 159
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->incrementTotalCount()V

    .line 165
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->isDefaultLabel()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 166
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_3b

    .line 167
    const-string v0, "Upgrading label \'%s\' from default"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 169
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getLastModifiedTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 171
    :cond_49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    sget-object v1, Lcom/google/android/apps/googlevoice/core/Conversation;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    return-void
.end method

.method public decrementTotalCount()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getTotalCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setTotalCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 194
    return-void
.end method

.method public decrementUnreadCount()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getUnreadCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setUnreadCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 204
    return-void
.end method

.method public getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 209
    .local v0, conversationArray:[Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->priority:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getLastModifiedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "context"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, label:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/googlevoice/core/Label;->titleResources:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 237
    .local v1, resource:Ljava/lang/Integer;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_16
    return-object v2

    :cond_17
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toTitleCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_16
.end method

.method public getTitleWithCounts(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/core/Label;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 246
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 248
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getUnreadCount()I
    .registers 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getUnreadCount()I

    move-result v0

    .line 262
    .local v0, count:I
    if-gez v0, :cond_9

    .line 263
    const/4 v0, 0x0

    .line 265
    :cond_9
    return v0
.end method

.method public incrementTotalCount()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getTotalCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setTotalCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 189
    return-void
.end method

.method public incrementUnreadCount()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getUnreadCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setUnreadCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 199
    return-void
.end method

.method public isDefaultLabel()Z
    .registers 5

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getLastModifiedTimestamp()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isMoveToInboxAvailable()Z
    .registers 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/Label;->isMoveToInboxAvailableForLabel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 4
    .parameter "conversation"

    .prologue
    .line 176
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v0

    if-nez v0, :cond_14

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->decrementUnreadCount()V

    .line 181
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->decrementTotalCount()V

    .line 183
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    sget-object v1, Lcom/google/android/apps/googlevoice/core/Conversation;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    return-void
.end method

.method public setConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 5
    .parameter "conversations"

    .prologue
    .line 275
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 277
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Label;->conversations:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 279
    :cond_15
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 283
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 285
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/core/Label;->updatePriority()V

    .line 286
    return-void
.end method

.method public setTimestamp(J)V
    .registers 5
    .parameter "timestamp"

    .prologue
    .line 290
    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_7
    const-string v1, "timestamp > Long.MIN_VALUE"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 292
    return-void

    .line 290
    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setTotalCount(I)V
    .registers 4
    .parameter "total"

    .prologue
    .line 296
    if-ltz p1, :cond_e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "total >= 0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setTotalCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 298
    return-void

    .line 296
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setUnreadCount(I)V
    .registers 4
    .parameter "unread"

    .prologue
    .line 302
    if-ltz p1, :cond_e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "unread >= 0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setUnreadCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 304
    return-void

    .line 302
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public toApiConversationLabel()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Label;->apiLabelBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method
