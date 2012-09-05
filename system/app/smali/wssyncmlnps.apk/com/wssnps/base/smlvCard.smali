.class public Lcom/wssnps/base/smlvCard;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/base/smlvCard$SMLDate_t;,
        Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;,
        Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;,
        Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;,
        Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;,
        Lcom/wssnps/base/smlvCard$SmlvCardName_t;,
        Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;,
        Lcom/wssnps/base/smlvCard$SmlvCardVersion;,
        Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;,
        Lcom/wssnps/base/smlvCard$SmlvCard_t;
    }
.end annotation


# direct methods
.method public static DecodeVCard(Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SmlvCard_t;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 754
    .line 761
    if-nez p0, :cond_5

    .line 763
    const/4 v0, 0x0

    .line 940
    :goto_4
    return-object v0

    .line 766
    :cond_5
    new-instance v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;

    invoke-direct {v2}, Lcom/wssnps/base/smlvCard$SmlvCard_t;-><init>()V

    .line 768
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v3

    .line 770
    invoke-static {p0}, Lcom/wssnps/base/smlvCard;->VCardGetList(Ljava/lang/String;)Lcom/wssnps/base/smlVItemTools;

    move-result-object v4

    move v1, v0

    .line 772
    :goto_13
    iget-object v0, v4, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_25

    .line 934
    if-nez v2, :cond_23

    .line 936
    const/4 v0, 0x1

    const-string v1, "smlDecodevCard vCard is null"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    :cond_23
    move-object v0, v2

    .line 940
    goto :goto_4

    .line 774
    :cond_25
    iget-object v0, v4, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlVItemItem;

    .line 776
    iget v5, v0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    packed-switch v5, :pswitch_data_122

    .line 931
    :cond_32
    :goto_32
    :pswitch_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 789
    :pswitch_36
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetFN(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    goto :goto_32

    .line 794
    :pswitch_3d
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetN(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    goto :goto_32

    .line 799
    :pswitch_44
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetNICKNAME(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_32

    .line 802
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 808
    :pswitch_50
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetBDAY(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_32

    .line 810
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 815
    :pswitch_5c
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetANNIVERSARY(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_32

    .line 817
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 822
    :pswitch_68
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetEVENT(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_32

    .line 825
    iget-object v5, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    if-nez v5, :cond_78

    .line 826
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 828
    :cond_78
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 834
    :pswitch_7e
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetRELEATION(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_32

    .line 836
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 841
    :pswitch_8a
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetTEL(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_32

    .line 844
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 850
    :pswitch_96
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetEMAIL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_32

    .line 852
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 858
    :pswitch_a2
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetTITLE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    goto :goto_32

    .line 863
    :pswitch_a9
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetROLE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ROLE:Ljava/lang/String;

    goto :goto_32

    .line 869
    :pswitch_b0
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetADR(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_32

    .line 871
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 876
    :pswitch_bd
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetORG(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_32

    .line 878
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 884
    :pswitch_ca
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetNOTE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_32

    .line 886
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 891
    :pswitch_d7
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetURL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_32

    .line 893
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 898
    :pswitch_e4
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetXGROUP(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    goto/16 :goto_32

    .line 903
    :pswitch_ec
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetPHOTO(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    goto/16 :goto_32

    .line 908
    :pswitch_f4
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->vCardGetSPEEDDIAL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    goto/16 :goto_32

    .line 913
    :pswitch_fc
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetVERSION(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->VERSION:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    goto/16 :goto_32

    .line 918
    :pswitch_104
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetXACCOUNT(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    goto/16 :goto_32

    .line 921
    :pswitch_10c
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetIM(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_32

    .line 923
    iget-object v5, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 926
    :pswitch_119
    invoke-static {v0, v3}, Lcom/wssnps/base/smlvItemApi;->VCardGetGROUP(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    move-result-object v0

    iput-object v0, v2, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    goto/16 :goto_32

    .line 776
    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_36
        :pswitch_3d
        :pswitch_44
        :pswitch_8a
        :pswitch_96
        :pswitch_a2
        :pswitch_a9
        :pswitch_bd
        :pswitch_b0
        :pswitch_50
        :pswitch_ec
        :pswitch_d7
        :pswitch_ca
        :pswitch_fc
        :pswitch_e4
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_119
        :pswitch_32
        :pswitch_f4
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_104
        :pswitch_10c
        :pswitch_68
        :pswitch_32
        :pswitch_32
        :pswitch_5c
        :pswitch_7e
    .end packed-switch
.end method

.method public static DecodeVCardList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCard_t;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 551
    move-object v0, v1

    .line 556
    check-cast v0, [Ljava/lang/String;

    .line 559
    if-nez p0, :cond_8

    .line 749
    :goto_7
    return-object v1

    .line 563
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v5

    .line 568
    const-string v0, "BEGIN:VCARD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v3, v2

    .line 570
    :goto_18
    array-length v0, v6

    if-lt v3, v0, :cond_1d

    move-object v1, v4

    .line 749
    goto :goto_7

    .line 574
    :cond_1d
    aget-object v0, v6, v3

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 576
    new-instance v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;

    invoke-direct {v7}, Lcom/wssnps/base/smlvCard$SmlvCard_t;-><init>()V

    .line 577
    aget-object v0, v6, v3

    invoke-static {v0}, Lcom/wssnps/base/smlvCard;->VCardGetList(Ljava/lang/String;)Lcom/wssnps/base/smlVItemTools;

    move-result-object v8

    move v1, v2

    .line 579
    :goto_31
    iget-object v0, v8, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_48

    .line 738
    if-nez v7, :cond_41

    .line 740
    const/4 v0, 0x1

    const-string v1, "smlDecodevCard vCard is null"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 744
    :cond_41
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_44
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    .line 581
    :cond_48
    iget-object v0, v8, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlVItemItem;

    .line 583
    iget v9, v0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    packed-switch v9, :pswitch_data_13c

    .line 735
    :cond_55
    :goto_55
    :pswitch_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 596
    :pswitch_59
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetFN(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    goto :goto_55

    .line 601
    :pswitch_60
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetN(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    goto :goto_55

    .line 606
    :pswitch_67
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetNICKNAME(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_55

    .line 609
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 615
    :pswitch_73
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetBDAY(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_55

    .line 617
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 622
    :pswitch_7f
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetANNIVERSARY(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_55

    .line 624
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 629
    :pswitch_8b
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetEVENT(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_55

    .line 632
    iget-object v9, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    if-nez v9, :cond_9b

    .line 633
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 635
    :cond_9b
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 641
    :pswitch_a1
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetRELEATION(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_55

    .line 643
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 648
    :pswitch_ad
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetTEL(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_55

    .line 651
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 657
    :pswitch_b9
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetEMAIL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_55

    .line 659
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 665
    :pswitch_c5
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetTITLE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    goto :goto_55

    .line 670
    :pswitch_cc
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetROLE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ROLE:Ljava/lang/String;

    goto :goto_55

    .line 676
    :pswitch_d3
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetADR(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;

    move-result-object v0

    .line 677
    if-eqz v0, :cond_55

    .line 678
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 683
    :pswitch_e0
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetORG(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_55

    .line 685
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 691
    :pswitch_ed
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetNOTE(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_55

    .line 693
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 698
    :pswitch_fa
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetURL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_55

    .line 700
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 705
    :pswitch_107
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetXGROUP(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    goto/16 :goto_55

    .line 710
    :pswitch_10f
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetPHOTO(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    goto/16 :goto_55

    .line 715
    :pswitch_117
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->vCardGetSPEEDDIAL(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    goto/16 :goto_55

    .line 720
    :pswitch_11f
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGetVERSION(Lcom/wssnps/base/smlVItemItem;)Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->VERSION:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    goto/16 :goto_55

    .line 725
    :pswitch_127
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetXACCOUNT(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    goto/16 :goto_55

    .line 728
    :pswitch_12f
    invoke-static {v0, v5}, Lcom/wssnps/base/smlvItemApi;->VCardGetIM(Lcom/wssnps/base/smlVItemItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_55

    .line 730
    iget-object v9, v7, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 583
    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_59
        :pswitch_60
        :pswitch_67
        :pswitch_ad
        :pswitch_b9
        :pswitch_c5
        :pswitch_cc
        :pswitch_e0
        :pswitch_d3
        :pswitch_73
        :pswitch_10f
        :pswitch_fa
        :pswitch_ed
        :pswitch_11f
        :pswitch_107
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_117
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_127
        :pswitch_12f
        :pswitch_8b
        :pswitch_55
        :pswitch_55
        :pswitch_7f
        :pswitch_a1
    .end packed-switch
.end method

.method public static EncodeVCard(Lcom/wssnps/base/smlvCard$SmlvCard_t;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x16

    const/4 v2, 0x0

    .line 147
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    if-nez p0, :cond_d

    move-object v0, v3

    .line 546
    :goto_c
    return-object v0

    .line 157
    :cond_d
    invoke-static {v2}, Lcom/wssnps/base/smlvItemApi;->smlGetVitemEncTemplete(I)Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;

    move-result-object v6

    .line 160
    const-string v0, "2.1"

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardBegin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-boolean v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->isValid:Z

    if-eqz v0, :cond_2e

    .line 172
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    invoke-static {v0, v1, v6}, Lcom/wssnps/base/smlvItemApi;->VCardN(ILcom/wssnps/base/smlvCard$SmlvCardName_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_2e
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 179
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    move v1, v2

    .line 183
    :goto_3f
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2a2

    .line 197
    :cond_47
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_58

    move v1, v2

    .line 201
    :goto_50
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2bf

    .line 215
    :cond_58
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_69

    move v1, v2

    .line 219
    :goto_61
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2dd

    .line 232
    :cond_69
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_96

    .line 235
    const-string v1, ""

    .line 236
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v4, v1

    move-object v0, v3

    move v3, v2

    move v1, v2

    .line 238
    :goto_7d
    if-lt v3, v7, :cond_2f5

    .line 253
    if-eqz v0, :cond_96

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_96

    if-eqz v1, :cond_96

    .line 258
    const/16 v0, 0x17

    invoke-static {v0, v4, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_96
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->SipAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 267
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->SipAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardSip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_a7
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b8

    move v1, v2

    .line 275
    :goto_b0
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_34c

    .line 288
    :cond_b8
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c9

    move v1, v2

    .line 292
    :goto_c1
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_364

    .line 305
    :cond_c9
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_da

    move v1, v2

    .line 309
    :goto_d2
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_37c

    .line 323
    :cond_da
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_eb

    move v1, v2

    .line 327
    :goto_e3
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_394

    .line 340
    :cond_eb
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_fc

    move v1, v2

    .line 344
    :goto_f4
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3b0

    .line 358
    :cond_fc
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 361
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :cond_10e
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11f

    move v1, v2

    .line 368
    :goto_117
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3c8

    .line 380
    :cond_11f
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_130

    move v1, v2

    .line 383
    :goto_128
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3e0

    .line 395
    :cond_130
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_141

    move v1, v2

    .line 398
    :goto_139
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3f8

    .line 410
    :cond_141
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_152

    move v1, v2

    .line 413
    :goto_14a
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_410

    .line 425
    :cond_152
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_162

    .line 429
    :goto_15a
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_428

    .line 442
    :cond_162
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_173

    .line 444
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardGROUPID(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :cond_173
    iget v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->dirty:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_181

    .line 451
    iget v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->dirty:I

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardDirty(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_181
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Contact_Account:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Contact_Account:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Contact_Account:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19e

    .line 459
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Contact_Account:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardAccount(Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :cond_19e
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    if-eqz v0, :cond_1d9

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d9

    .line 465
    const-string v0, "X-ACCOUNT-N:"

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    :cond_1d9
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    if-eqz v0, :cond_214

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_214

    .line 474
    const-string v0, "X-ACCOUNT-TYPE:"

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    :cond_214
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    if-eqz v0, :cond_276

    .line 492
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_276

    .line 494
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->type:I

    packed-switch v0, :pswitch_data_45c

    .line 514
    const-string v0, "Normal"

    invoke-static {v9, v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :goto_23f
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->sGroupDisplayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_276

    .line 519
    const-string v0, "X-GDISPN :"

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->sGroupDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_276
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    if-eqz v0, :cond_295

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    if-eqz v0, :cond_295

    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_295

    .line 531
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    :cond_295
    invoke-static {}, Lcom/wssnps/base/smlvItemApi;->VCardEnd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 185
    :cond_2a2
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2ba

    .line 189
    const/4 v4, 0x4

    invoke-static {v4, v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_2ba
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3f

    .line 203
    :cond_2bf
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2d8

    .line 207
    const/16 v4, 0xe

    invoke-static {v4, v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_2d8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_50

    .line 221
    :cond_2dd
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 222
    iget-object v4, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-eqz v4, :cond_2f0

    .line 225
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardTEL(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_2f0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_61

    .line 240
    :cond_2f5
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    const-string v8, "-1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_339

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v10, v1

    move-object v1, v4

    move v4, v10

    .line 250
    :goto_31b
    add-int/lit8 v8, v7, -0x1

    if-ge v3, v8, :cond_332

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_332
    add-int/lit8 v3, v3, 0x1

    move v10, v4

    move-object v4, v1

    move v1, v10

    goto/16 :goto_7d

    .line 247
    :cond_339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    const/4 v4, 0x1

    goto :goto_31b

    .line 277
    :cond_34c
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 278
    iget-object v3, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-eqz v3, :cond_35f

    .line 281
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEMAIL(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_35f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b0

    .line 294
    :cond_364
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 295
    iget-object v3, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-eqz v3, :cond_377

    .line 298
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardMessenger(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    :cond_377
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c1

    .line 311
    :cond_37c
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;

    .line 312
    iget-boolean v3, v0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->isValid:Z

    if-eqz v3, :cond_38f

    .line 315
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardADR(Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_38f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_d2

    .line 329
    :cond_394
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 330
    iget-object v3, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-eqz v3, :cond_3ab

    .line 333
    iget-object v3, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    invoke-static {v3, v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardURL(Ljava/lang/String;ILcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    :cond_3ab
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e3

    .line 346
    :cond_3b0
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;

    .line 347
    iget-boolean v3, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->isValid:Z

    if-eqz v3, :cond_3c3

    .line 350
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardORG(Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_3c3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_f4

    .line 370
    :cond_3c8
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 371
    iget v3, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    if-lez v3, :cond_3db

    .line 373
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardBDAY(Lcom/wssnps/base/smlvCard$SMLDate_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_3db
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_117

    .line 385
    :cond_3e0
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 386
    iget v3, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    if-lez v3, :cond_3f3

    .line 388
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardANNIVERSARY(Lcom/wssnps/base/smlvCard$SMLDate_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_3f3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_128

    .line 400
    :cond_3f8
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 401
    iget v3, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    if-lez v3, :cond_40b

    .line 403
    invoke-static {v0}, Lcom/wssnps/base/smlvItemApi;->VCardEVENTETC(Lcom/wssnps/base/smlvCard$SMLDate_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_40b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_139

    .line 415
    :cond_410
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 416
    iget v3, v0, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    if-lez v3, :cond_423

    .line 418
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardEVENTCUSTOM(Lcom/wssnps/base/smlvCard$SMLDate_t;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    :cond_423
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_14a

    .line 431
    :cond_428
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 432
    iget-object v1, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    if-eqz v1, :cond_43b

    .line 435
    invoke-static {v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardRELEATION(Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_43b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15a

    .line 500
    :pswitch_43f
    const-string v0, ""

    .line 501
    iget-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    const-string v1, "Contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_458

    .line 503
    const-string v0, "System;DEFAULT"

    .line 510
    :goto_44f
    invoke-static {v9, v0, v6}, Lcom/wssnps/base/smlvItemApi;->VCardItemString(ILjava/lang/String;Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23f

    .line 507
    :cond_458
    const-string v0, "System"

    goto :goto_44f

    .line 496
    nop

    :pswitch_data_45c
    .packed-switch 0x1
        :pswitch_43f
    .end packed-switch
.end method

.method public static VCardGetList(Ljava/lang/String;)Lcom/wssnps/base/smlVItemTools;
    .registers 3
    .parameter "str"

    .prologue
    .line 945
    new-instance v0, Lcom/wssnps/base/smlVItemTools;

    invoke-direct {v0}, Lcom/wssnps/base/smlVItemTools;-><init>()V

    .line 946
    .local v0, t:Lcom/wssnps/base/smlVItemTools;
    sget-object v1, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-virtual {v0, p0, v1}, Lcom/wssnps/base/smlVItemTools;->VitemGetList(Ljava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Z

    .line 947
    return-object v0
.end method
