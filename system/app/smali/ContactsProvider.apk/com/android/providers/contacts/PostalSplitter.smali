.class public Lcom/android/providers/contacts/PostalSplitter;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PostalSplitter$Postal;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 29
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    .line 65
    return-void
.end method

.method private static arePrintableAsciiOnly([Ljava/lang/String;)Z
    .registers 7
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 233
    if-nez p0, :cond_4

    .line 244
    :cond_3
    :goto_3
    return v4

    .line 236
    :cond_4
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 237
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 236
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 240
    :cond_14
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 241
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .registers 16
    .parameter "postal"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 167
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c7

    move v9, v11

    .line 168
    .local v9, hasStreet:Z
    :goto_b
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ca

    move v5, v11

    .line 169
    .local v5, hasPobox:Z
    :goto_14
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_cd

    move v4, v11

    .line 170
    .local v4, hasNeighborhood:Z
    :goto_1d
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d0

    move v1, v11

    .line 171
    .local v1, hasCity:Z
    :goto_26
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d3

    move v7, v11

    .line 172
    .local v7, hasRegion:Z
    :goto_2f
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d6

    move v6, v11

    .line 173
    .local v6, hasPostcode:Z
    :goto_38
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d9

    move v2, v11

    .line 179
    .local v2, hasCountry:Z
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v9, :cond_4c

    if-nez v5, :cond_4c

    if-eqz v4, :cond_dc

    :cond_4c
    move v3, v11

    .line 182
    .local v3, hasFirstBlock:Z
    :goto_4d
    if-nez v1, :cond_53

    if-nez v7, :cond_53

    if-eqz v6, :cond_df

    :cond_53
    move v8, v11

    .line 183
    .local v8, hasSecondBlock:Z
    :goto_54
    move v10, v2

    .line 185
    .local v10, hasThirdBlock:Z
    if-eqz v3, :cond_7c

    .line 186
    if-eqz v9, :cond_5e

    .line 187
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_5e
    if-eqz v5, :cond_6c

    .line 190
    if-eqz v9, :cond_67

    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_67
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_6c
    if-eqz v4, :cond_7c

    .line 194
    if-nez v9, :cond_72

    if-eqz v5, :cond_77

    :cond_72
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_77
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_7c
    if-eqz v8, :cond_aa

    .line 200
    if-eqz v3, :cond_85

    .line 201
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_85
    if-eqz v1, :cond_8c

    .line 204
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_8c
    if-eqz v7, :cond_9a

    .line 207
    if-eqz v1, :cond_95

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_95
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_9a
    if-eqz v6, :cond_aa

    .line 211
    if-nez v1, :cond_a0

    if-eqz v7, :cond_a5

    :cond_a0
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_a5
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_aa
    if-eqz v10, :cond_bc

    .line 217
    if-nez v3, :cond_b0

    if-eqz v8, :cond_b5

    .line 218
    :cond_b0
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_b5
    if-eqz v2, :cond_bc

    .line 221
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_e2

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 228
    :goto_c6
    return-object v11

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasCity:Z
    .end local v2           #hasCountry:Z
    .end local v3           #hasFirstBlock:Z
    .end local v4           #hasNeighborhood:Z
    .end local v5           #hasPobox:Z
    .end local v6           #hasPostcode:Z
    .end local v7           #hasRegion:Z
    .end local v8           #hasSecondBlock:Z
    .end local v9           #hasStreet:Z
    .end local v10           #hasThirdBlock:Z
    :cond_c7
    move v9, v12

    .line 167
    goto/16 :goto_b

    .restart local v9       #hasStreet:Z
    :cond_ca
    move v5, v12

    .line 168
    goto/16 :goto_14

    .restart local v5       #hasPobox:Z
    :cond_cd
    move v4, v12

    .line 169
    goto/16 :goto_1d

    .restart local v4       #hasNeighborhood:Z
    :cond_d0
    move v1, v12

    .line 170
    goto/16 :goto_26

    .restart local v1       #hasCity:Z
    :cond_d3
    move v7, v12

    .line 171
    goto/16 :goto_2f

    .restart local v7       #hasRegion:Z
    :cond_d6
    move v6, v12

    .line 172
    goto/16 :goto_38

    .restart local v6       #hasPostcode:Z
    :cond_d9
    move v2, v12

    .line 173
    goto/16 :goto_41

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #hasCountry:Z
    :cond_dc
    move v3, v12

    .line 181
    goto/16 :goto_4d

    .restart local v3       #hasFirstBlock:Z
    :cond_df
    move v8, v12

    .line 182
    goto/16 :goto_54

    .line 228
    .restart local v8       #hasSecondBlock:Z
    .restart local v10       #hasThirdBlock:Z
    :cond_e2
    const/4 v11, 0x0

    goto :goto_c6
.end method

.method private joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .registers 16
    .parameter "postal"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 101
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c7

    move v9, v11

    .line 102
    .local v9, hasStreet:Z
    :goto_b
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ca

    move v5, v11

    .line 103
    .local v5, hasPobox:Z
    :goto_14
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_cd

    move v4, v11

    .line 104
    .local v4, hasNeighborhood:Z
    :goto_1d
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d0

    move v1, v11

    .line 105
    .local v1, hasCity:Z
    :goto_26
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d3

    move v7, v11

    .line 106
    .local v7, hasRegion:Z
    :goto_2f
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d6

    move v6, v11

    .line 107
    .local v6, hasPostcode:Z
    :goto_38
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d9

    move v2, v11

    .line 113
    .local v2, hasCountry:Z
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v2, :cond_4a

    if-eqz v6, :cond_dc

    :cond_4a
    move v3, v11

    .line 116
    .local v3, hasFirstBlock:Z
    :goto_4b
    if-nez v7, :cond_51

    if-nez v1, :cond_51

    if-eqz v4, :cond_df

    :cond_51
    move v8, v11

    .line 117
    .local v8, hasSecondBlock:Z
    :goto_52
    if-nez v9, :cond_56

    if-eqz v5, :cond_e2

    :cond_56
    move v10, v11

    .line 119
    .local v10, hasThirdBlock:Z
    :goto_57
    if-eqz v3, :cond_6e

    .line 120
    if-eqz v2, :cond_60

    .line 121
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_60
    if-eqz v6, :cond_6e

    .line 124
    if-eqz v2, :cond_69

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_69
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_6e
    if-eqz v8, :cond_9c

    .line 130
    if-eqz v3, :cond_77

    .line 131
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_77
    if-eqz v7, :cond_7e

    .line 134
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_7e
    if-eqz v1, :cond_8c

    .line 137
    if-eqz v7, :cond_87

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_87
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_8c
    if-eqz v4, :cond_9c

    .line 141
    if-nez v7, :cond_92

    if-eqz v1, :cond_97

    :cond_92
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_97
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_9c
    if-eqz v10, :cond_bc

    .line 147
    if-nez v3, :cond_a2

    if-eqz v8, :cond_a7

    .line 148
    :cond_a2
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_a7
    if-eqz v9, :cond_ae

    .line 151
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_ae
    if-eqz v5, :cond_bc

    .line 154
    if-eqz v9, :cond_b7

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_b7
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_e5

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 162
    :goto_c6
    return-object v11

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasCity:Z
    .end local v2           #hasCountry:Z
    .end local v3           #hasFirstBlock:Z
    .end local v4           #hasNeighborhood:Z
    .end local v5           #hasPobox:Z
    .end local v6           #hasPostcode:Z
    .end local v7           #hasRegion:Z
    .end local v8           #hasSecondBlock:Z
    .end local v9           #hasStreet:Z
    .end local v10           #hasThirdBlock:Z
    :cond_c7
    move v9, v12

    .line 101
    goto/16 :goto_b

    .restart local v9       #hasStreet:Z
    :cond_ca
    move v5, v12

    .line 102
    goto/16 :goto_14

    .restart local v5       #hasPobox:Z
    :cond_cd
    move v4, v12

    .line 103
    goto/16 :goto_1d

    .restart local v4       #hasNeighborhood:Z
    :cond_d0
    move v1, v12

    .line 104
    goto/16 :goto_26

    .restart local v1       #hasCity:Z
    :cond_d3
    move v7, v12

    .line 105
    goto/16 :goto_2f

    .restart local v7       #hasRegion:Z
    :cond_d6
    move v6, v12

    .line 106
    goto/16 :goto_38

    .restart local v6       #hasPostcode:Z
    :cond_d9
    move v2, v12

    .line 107
    goto/16 :goto_41

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #hasCountry:Z
    :cond_dc
    move v3, v12

    .line 115
    goto/16 :goto_4b

    .restart local v3       #hasFirstBlock:Z
    :cond_df
    move v8, v12

    .line 116
    goto/16 :goto_52

    .restart local v8       #hasSecondBlock:Z
    :cond_e2
    move v10, v12

    .line 117
    goto/16 :goto_57

    .line 162
    .restart local v10       #hasThirdBlock:Z
    :cond_e5
    const/4 v11, 0x0

    goto :goto_c6
.end method


# virtual methods
.method public join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .registers 5
    .parameter "postal"

    .prologue
    .line 86
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 91
    .local v0, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_51

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_46
    invoke-static {v0}, Lcom/android/providers/contacts/PostalSplitter;->arePrintableAsciiOnly([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 94
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_50
    return-object v1

    :cond_51
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    goto :goto_50
.end method

.method public split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V
    .registers 4
    .parameter "postal"
    .parameter "formattedAddress"

    .prologue
    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 73
    iput-object p2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    .line 75
    :cond_8
    return-void
.end method
