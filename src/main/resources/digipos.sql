--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-02-17 00:19:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 16413)
-- Name: adresse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresse (
    id_adresse bigint NOT NULL,
    city_address character varying(255),
    country_address character varying(255),
    phone_livraison character varying(255),
    quartier_address character varying(255),
    repere_address character varying(255),
    secteur_bloc_address character varying(255),
    state_address character varying(255),
    type_adress character varying(255),
    zipcode_address character varying(255),
    secteurs_id bigint,
    user_id_user bigint
);


ALTER TABLE public.adresse OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16421)
-- Name: afrik_pay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.afrik_pay (
    amount character varying(255),
    id bigint,
    paymentlink character varying(255),
    paymentref character varying(255),
    purchaseref character varying(255),
    status character varying(255),
    id_payment bigint NOT NULL
);


ALTER TABLE public.afrik_pay OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16429)
-- Name: afrikpay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.afrikpay (
    name character varying(255),
    id_payment bigint NOT NULL
);


ALTER TABLE public.afrikpay OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16434)
-- Name: app_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_role (
    id bigint NOT NULL,
    date timestamp without time zone,
    rolename character varying(255)
);


ALTER TABLE public.app_role OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16439)
-- Name: attente_paiement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attente_paiement (
    name character varying(255),
    id_paiement bigint NOT NULL
);


ALTER TABLE public.attente_paiement OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16446)
-- Name: banniere; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banniere (
    id_banniere bigint NOT NULL,
    active_banniere boolean NOT NULL,
    date_creation_banniere timestamp without time zone,
    image_banniere text,
    message_banniere character varying(255),
    nbre_clic integer NOT NULL
);


ALTER TABLE public.banniere OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16444)
-- Name: banniere_id_banniere_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banniere_id_banniere_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banniere_id_banniere_seq OWNER TO postgres;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 205
-- Name: banniere_id_banniere_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banniere_id_banniere_seq OWNED BY public.banniere.id_banniere;


--
-- TOC entry 208 (class 1259 OID 16457)
-- Name: boutique; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boutique (
    id_boutique bigint NOT NULL,
    active boolean NOT NULL,
    adress_boutique character varying(255),
    agent_id_boutique_afrikpay character varying(255),
    agentpassword character varying(255),
    agent_platform character varying(255),
    apikey_bill character varying(255),
    apik_afrikpay character varying(255),
    date timestamp without time zone,
    description text,
    email_boutique character varying(255),
    lien character varying(255),
    merchantid_afrikpay character varying(255),
    nbre_de_favoris integer NOT NULL,
    nbredevues integer NOT NULL,
    nom_boutique character varying(255),
    pays character varying(255),
    photoboutique text,
    quartier character varying(255),
    secteur character varying(255),
    store_afrikpay character varying(255),
    telephone_boutique character varying(255),
    ville character varying(255),
    id_caise bigint
);


ALTER TABLE public.boutique OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16466)
-- Name: boutique_favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boutique_favorites (
    boutique_id_boutique bigint NOT NULL,
    favorites_id bigint NOT NULL
);


ALTER TABLE public.boutique_favorites OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16455)
-- Name: boutique_id_boutique_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boutique_id_boutique_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boutique_id_boutique_seq OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 207
-- Name: boutique_id_boutique_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boutique_id_boutique_seq OWNED BY public.boutique.id_boutique;


--
-- TOC entry 210 (class 1259 OID 16469)
-- Name: boutique_ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boutique_ratings (
    boutique_id_boutique bigint NOT NULL,
    ratings_id bigint NOT NULL
);


ALTER TABLE public.boutique_ratings OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16472)
-- Name: caisse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caisse (
    id_caise bigint NOT NULL,
    date timestamp without time zone,
    reference_commande character varying(255),
    solde double precision NOT NULL
);


ALTER TABLE public.caisse OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16477)
-- Name: cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart (
    id_cart bigint NOT NULL,
    grand_total double precision NOT NULL,
    grand_total_vente double precision NOT NULL,
    date timestamp without time zone,
    id_user bigint
);


ALTER TABLE public.cart OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16482)
-- Name: cart_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_item (
    id_item bigint NOT NULL,
    date timestamp without time zone,
    description character varying(255),
    prixvendu double precision NOT NULL,
    quantite integer NOT NULL,
    subtotal double precision NOT NULL,
    id_cart bigint,
    id_commande bigint,
    id_produit bigint
);


ALTER TABLE public.cart_item OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16487)
-- Name: cash; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cash (
    name character varying(255),
    id_payment bigint NOT NULL
);


ALTER TABLE public.cash OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16492)
-- Name: cash_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cash_session (
    id bigint NOT NULL,
    cash_status character varying(255),
    closure_physical_amount double precision NOT NULL,
    closure_theorical_amount double precision NOT NULL,
    end_date timestamp without time zone,
    initial_amount double precision NOT NULL,
    solde double precision NOT NULL,
    start_date timestamp without time zone,
    id_caise bigint,
    id_user bigint
);


ALTER TABLE public.cash_session OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16497)
-- Name: cash_transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cash_transaction (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    comment character varying(255),
    date_transaction timestamp without time zone,
    last_transaction double precision NOT NULL,
    modepaiement character varying(255),
    transaction_type character varying(255),
    id_cashssesion bigint,
    idcommande bigint
);


ALTER TABLE public.cash_transaction OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16507)
-- Name: catalogue_produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalogue_produit (
    id bigint NOT NULL,
    active boolean NOT NULL,
    date timestamp without time zone,
    genre_client character varying(255),
    image text,
    nom_produit character varying(255),
    prix double precision NOT NULL,
    id_categorie bigint
);


ALTER TABLE public.catalogue_produit OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16505)
-- Name: catalogue_produit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalogue_produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogue_produit_id_seq OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 217
-- Name: catalogue_produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalogue_produit_id_seq OWNED BY public.catalogue_produit.id;


--
-- TOC entry 219 (class 1259 OID 16516)
-- Name: categorie_produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorie_produit (
    id_categorie bigint NOT NULL,
    active boolean NOT NULL,
    classe character varying(255),
    date timestamp without time zone,
    image_categorie character varying(255),
    nom_categorie character varying(255),
    type character varying(255)
);


ALTER TABLE public.categorie_produit OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16526)
-- Name: code_coupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.code_coupon (
    id_code bigint NOT NULL,
    montant double precision NOT NULL,
    pourcentage double precision NOT NULL,
    code character varying(255),
    is_valid boolean NOT NULL,
    id_coupon bigint
);


ALTER TABLE public.code_coupon OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16524)
-- Name: code_coupon_id_code_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.code_coupon_id_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.code_coupon_id_code_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 220
-- Name: code_coupon_id_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.code_coupon_id_code_seq OWNED BY public.code_coupon.id_code;


--
-- TOC entry 222 (class 1259 OID 16532)
-- Name: colis_digi_express; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colis_digi_express (
    id character varying(255) NOT NULL,
    contact_destinataire character varying(255),
    contact_expediteur character varying(255),
    cotation double precision NOT NULL,
    description_coli character varying(255),
    description_quotation character varying(255),
    email_destinataire character varying(255),
    email_expediteur character varying(255),
    libelle_coli character varying(255),
    lieu_destination_coli character varying(255),
    lieu_enregistrement_coli character varying(255),
    mode_payement character varying(255),
    nature character varying(255),
    nom_complet_destinataire character varying(255),
    nom_complet_expediteur character varying(255),
    partenaire integer NOT NULL,
    payement_accepter character varying(255),
    payement_commande boolean NOT NULL,
    point_relaiss_id bigint,
    prix_livraison double precision NOT NULL,
    quotation_accepter character varying(255),
    referencecoli character varying(255),
    secteur_id bigint,
    secteur_lieu_destination_coli integer NOT NULL,
    secteur_lieu_enregistrement_coli integer NOT NULL,
    status_coli boolean NOT NULL,
    type_payement character varying(255),
    valider boolean NOT NULL
);


ALTER TABLE public.colis_digi_express OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16542)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande (
    idcommande bigint NOT NULL,
    grand_total double precision NOT NULL,
    code_coupon character varying(255),
    code_cloture character varying(255),
    date_commande timestamp without time zone,
    date_livraison timestamp without time zone,
    datepayement timestamp without time zone,
    fraislivraison double precision NOT NULL,
    idcolis bigint,
    livreur character varying(255),
    modecommande character varying(255),
    montant_coupon double precision DEFAULT '0'::double precision,
    nomvendeur character varying(255),
    referencecommande character varying(255),
    statut character varying(255),
    id_adresse bigint,
    id_boutique bigint,
    id_paiement bigint,
    id_user bigint
);


ALTER TABLE public.commande OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16540)
-- Name: commande_idcommande_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commande_idcommande_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commande_idcommande_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 223
-- Name: commande_idcommande_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commande_idcommande_seq OWNED BY public.commande.idcommande;


--
-- TOC entry 225 (class 1259 OID 16552)
-- Name: commande_inventaire_item_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande_inventaire_item_list (
    commande_idcommande bigint NOT NULL,
    inventaire_item_list_id_inventaireitem bigint NOT NULL
);


ALTER TABLE public.commande_inventaire_item_list OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16557)
-- Name: coupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupon (
    id_coupon bigint NOT NULL,
    auteur character varying(255),
    date_debut timestamp without time zone,
    date_fin timestamp without time zone,
    expire boolean NOT NULL,
    typecoupon character varying(255),
    user_coupon character varying(255),
    usercreatecoupon character varying(255)
);


ALTER TABLE public.coupon OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16555)
-- Name: coupon_id_coupon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coupon_id_coupon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_id_coupon_seq OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 226
-- Name: coupon_id_coupon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coupon_id_coupon_seq OWNED BY public.coupon.id_coupon;


--
-- TOC entry 228 (class 1259 OID 16566)
-- Name: coupon_montant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupon_montant (
    montant_coupon double precision NOT NULL,
    id_coupon bigint NOT NULL
);


ALTER TABLE public.coupon_montant OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16571)
-- Name: coupon_pourcentage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupon_pourcentage (
    pourcentage double precision NOT NULL,
    plafond double precision NOT NULL,
    id_coupon bigint NOT NULL
);


ALTER TABLE public.coupon_pourcentage OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16576)
-- Name: favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites (
    id bigint NOT NULL,
    app_user_id_user bigint
);


ALTER TABLE public.favorites OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16581)
-- Name: favorites_boutiquefavoris_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites_boutiquefavoris_list (
    favorites_id bigint NOT NULL,
    boutiquefavoris_list_id_boutique bigint NOT NULL
);


ALTER TABLE public.favorites_boutiquefavoris_list OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16584)
-- Name: favorites_produitsfavotis_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites_produitsfavotis_list (
    favorites_id bigint NOT NULL,
    produitsfavotis_list_id_produit bigint NOT NULL
);


ALTER TABLE public.favorites_produitsfavotis_list OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16589)
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    id_genre integer NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16587)
-- Name: genre_id_genre_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genre_id_genre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_id_genre_seq OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 233
-- Name: genre_id_genre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genre_id_genre_seq OWNED BY public.genre.id_genre;


--
-- TOC entry 270 (class 1259 OID 16809)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16597)
-- Name: image_produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image_produit (
    idimage bigint NOT NULL,
    image text,
    publi_id character varying(255),
    id_produit bigint
);


ALTER TABLE public.image_produit OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16595)
-- Name: image_produit_idimage_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.image_produit_idimage_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_produit_idimage_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 235
-- Name: image_produit_idimage_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.image_produit_idimage_seq OWNED BY public.image_produit.idimage;


--
-- TOC entry 237 (class 1259 OID 16606)
-- Name: inventaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventaire (
    id bigint NOT NULL,
    date_inventaire timestamp without time zone,
    validerinventaire boolean NOT NULL,
    id_boutique bigint,
    id_user bigint
);


ALTER TABLE public.inventaire OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16611)
-- Name: inventaire_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventaire_item (
    id_inventaireitem bigint NOT NULL,
    date timestamp without time zone,
    difference integer NOT NULL,
    quantitephysique integer NOT NULL,
    quantitetheorique integer NOT NULL,
    id_inventaire bigint,
    id_produit bigint,
    transaction_id bigint
);


ALTER TABLE public.inventaire_item OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16616)
-- Name: localites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localites (
    id bigint NOT NULL,
    libelle_localite character varying(255),
    partenaire character varying(255),
    id_secteurs bigint
);


ALTER TABLE public.localites OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16624)
-- Name: momo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.momo (
    name character varying(255),
    id_payment bigint NOT NULL
);


ALTER TABLE public.momo OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16629)
-- Name: mtn_money; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtn_money (
    amount character varying(255),
    op_comment character varying(255),
    operation_type character varying(255),
    processing_number character varying(255),
    receiver_number character varying(255),
    sender_number character varying(255),
    status_code character varying(255),
    status_desc character varying(255),
    transactionid character varying(255),
    id_payment bigint NOT NULL
);


ALTER TABLE public.mtn_money OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16637)
-- Name: new_letter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.new_letter (
    id bigint NOT NULL,
    date timestamp without time zone,
    email character varying(255),
    is_valider boolean NOT NULL,
    nom character varying(255),
    phone character varying(255)
);


ALTER TABLE public.new_letter OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16645)
-- Name: om; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.om (
    name character varying(255),
    id_payment bigint NOT NULL
);


ALTER TABLE public.om OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16652)
-- Name: password_reset_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_token (
    id bigint NOT NULL,
    token character varying(255),
    id_user bigint
);


ALTER TABLE public.password_reset_token OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16650)
-- Name: password_reset_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.password_reset_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.password_reset_token_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 244
-- Name: password_reset_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.password_reset_token_id_seq OWNED BY public.password_reset_token.id;


--
-- TOC entry 247 (class 1259 OID 16660)
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    id_payment bigint NOT NULL,
    date timestamp without time zone,
    phone character varying(255),
    resultpayment text
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16658)
-- Name: payment_id_payment_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_id_payment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_id_payment_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 246
-- Name: payment_id_payment_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_id_payment_seq OWNED BY public.payment.id_payment;


--
-- TOC entry 248 (class 1259 OID 16669)
-- Name: payment_to_caisse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_to_caisse (
    montant double precision NOT NULL,
    reference character varying(255),
    id_paiement bigint NOT NULL
);


ALTER TABLE public.payment_to_caisse OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16674)
-- Name: pays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pays (
    id bigint NOT NULL,
    libelle_pays character varying(255)
);


ALTER TABLE public.pays OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16679)
-- Name: point_relais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.point_relais (
    id bigint NOT NULL,
    description_point_relais character varying(255),
    gestionnaire bigint,
    heure_fermeture character varying(255),
    heure_ouverture character varying(255),
    libelle_point_relais character varying(255),
    type_point character varying(255),
    id_secteur bigint
);


ALTER TABLE public.point_relais OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16689)
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit (
    id_produit bigint NOT NULL,
    active boolean NOT NULL,
    activeprixlivraison boolean DEFAULT false,
    afficherprix boolean NOT NULL,
    applique_reduction boolean NOT NULL,
    arrivage boolean NOT NULL,
    caracteristiques text,
    date_debut_promotion timestamp without time zone,
    date_fin_promotion timestamp without time zone,
    dateproduit timestamp without time zone,
    description text,
    frais_livraison_point_relais double precision NOT NULL,
    frais_livraison_point_specifique double precision NOT NULL,
    gamme character varying(255),
    idboutique bigint,
    image text,
    marque character varying(255),
    nbre_de_favoris integer NOT NULL,
    nbredevues integer NOT NULL,
    nom_categorie character varying(255),
    nom_produit character varying(255),
    poids integer DEFAULT 0,
    pourcentagepromotion double precision NOT NULL,
    prix_produit double precision NOT NULL,
    prixpromotionnel double precision NOT NULL,
    promo_acitve boolean,
    purchases numeric(19,2),
    qcode character varying(255),
    quantite_en_stock integer NOT NULL,
    reference_produit character varying(255),
    vues integer NOT NULL,
    boutiques_produit_id_boutique bigint,
    idcatalogue bigint,
    id_coupon bigint,
    idstock bigint
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16700)
-- Name: produit_favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit_favorites (
    produit_id_produit bigint NOT NULL,
    favorites_id bigint NOT NULL
);


ALTER TABLE public.produit_favorites OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16687)
-- Name: produit_id_produit_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produit_id_produit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_id_produit_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 251
-- Name: produit_id_produit_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produit_id_produit_seq OWNED BY public.produit.id_produit;


--
-- TOC entry 254 (class 1259 OID 16703)
-- Name: produit_inventaire_item_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit_inventaire_item_list (
    produit_id_produit bigint NOT NULL,
    inventaire_item_list_id_inventaireitem bigint NOT NULL
);


ALTER TABLE public.produit_inventaire_item_list OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 16706)
-- Name: produit_listproduit_associers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit_listproduit_associers (
    produit_id_produit bigint NOT NULL,
    listproduit_associers_id_produit bigint NOT NULL
);


ALTER TABLE public.produit_listproduit_associers OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 16711)
-- Name: publicite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicite (
    id_publicite bigint NOT NULL,
    active boolean NOT NULL,
    datedebut timestamp without time zone,
    datefin timestamp without time zone,
    image text,
    id_boutique bigint
);


ALTER TABLE public.publicite OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16709)
-- Name: publicite_id_publicite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicite_id_publicite_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publicite_id_publicite_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 256
-- Name: publicite_id_publicite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicite_id_publicite_seq OWNED BY public.publicite.id_publicite;


--
-- TOC entry 258 (class 1259 OID 16720)
-- Name: quartiers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quartiers (
    id bigint NOT NULL,
    libelle_quartier character varying(255),
    id_ville bigint
);


ALTER TABLE public.quartiers OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 16725)
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating (
    id bigint NOT NULL,
    commentaire character varying(255),
    date timestamp without time zone,
    rating double precision NOT NULL,
    id_boutique bigint,
    id_user bigint
);


ALTER TABLE public.rating OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 16732)
-- Name: reclam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reclam (
    id_reclam bigint NOT NULL,
    commentaire character varying(255),
    raison character varying(255),
    statut character varying(255),
    date_reclam timestamp without time zone,
    id_commande bigint,
    id_produit bigint
);


ALTER TABLE public.reclam OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 16730)
-- Name: reclam_id_reclam_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reclam_id_reclam_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reclam_id_reclam_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 260
-- Name: reclam_id_reclam_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reclam_id_reclam_seq OWNED BY public.reclam.id_reclam;


--
-- TOC entry 262 (class 1259 OID 16741)
-- Name: secteurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secteurs (
    id bigint NOT NULL,
    libelle_secteur character varying(255),
    id_quartier bigint
);


ALTER TABLE public.secteurs OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 16746)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    idstock bigint NOT NULL,
    date_expiration timestamp without time zone,
    date_manufacture timestamp without time zone,
    dernier_ajout integer NOT NULL,
    reserved_stock integer NOT NULL,
    shopping_stock integer NOT NULL,
    stock_alarm_limit integer NOT NULL,
    total_stock integer NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 16751)
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction (
    id bigint NOT NULL,
    commentaire character varying(255),
    date_operation timestamp without time zone,
    motif character varying(255),
    quantite_final integer NOT NULL,
    quantite_init integer NOT NULL,
    quantity integer NOT NULL,
    type_transaction character varying(255),
    id_inventaireitem bigint,
    id_produit bigint,
    id_user bigint
);


ALTER TABLE public.transaction OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 16759)
-- Name: usershop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usershop (
    id_user bigint NOT NULL,
    activervendeur boolean NOT NULL,
    cni character varying(255),
    code_confirmation character varying(255),
    date timestamp without time zone,
    default_adress character varying(255),
    email character varying(255),
    email_verification_status boolean,
    email_verification_token character varying(255),
    enabled boolean NOT NULL,
    encrypted_password character varying(255),
    first_name character varying(255),
    image text,
    last_name character varying(255),
    password character varying(255),
    phone character varying(255),
    username character varying(255),
    id_boutique bigint,
    favorites_id bigint
);


ALTER TABLE public.usershop OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 16767)
-- Name: usershop_inventaire_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usershop_inventaire_list (
    app_user_id_user bigint NOT NULL,
    inventaire_list_id bigint NOT NULL
);


ALTER TABLE public.usershop_inventaire_list OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 16770)
-- Name: usershop_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usershop_roles (
    app_user_id_user bigint NOT NULL,
    roles_id bigint NOT NULL
);


ALTER TABLE public.usershop_roles OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 16773)
-- Name: view_client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.view_client (
    id bigint NOT NULL,
    date timestamp without time zone,
    id_boutique bigint,
    idproduit bigint,
    iduser bigint
);


ALTER TABLE public.view_client OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 16778)
-- Name: villes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.villes (
    id bigint NOT NULL,
    libelle_ville character varying(255),
    id_pays bigint
);


ALTER TABLE public.villes OWNER TO postgres;

--
-- TOC entry 3121 (class 2604 OID 16449)
-- Name: banniere id_banniere; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banniere ALTER COLUMN id_banniere SET DEFAULT nextval('public.banniere_id_banniere_seq'::regclass);


--
-- TOC entry 3122 (class 2604 OID 16460)
-- Name: boutique id_boutique; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique ALTER COLUMN id_boutique SET DEFAULT nextval('public.boutique_id_boutique_seq'::regclass);


--
-- TOC entry 3123 (class 2604 OID 16510)
-- Name: catalogue_produit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogue_produit ALTER COLUMN id SET DEFAULT nextval('public.catalogue_produit_id_seq'::regclass);


--
-- TOC entry 3124 (class 2604 OID 16529)
-- Name: code_coupon id_code; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.code_coupon ALTER COLUMN id_code SET DEFAULT nextval('public.code_coupon_id_code_seq'::regclass);


--
-- TOC entry 3125 (class 2604 OID 16545)
-- Name: commande idcommande; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande ALTER COLUMN idcommande SET DEFAULT nextval('public.commande_idcommande_seq'::regclass);


--
-- TOC entry 3127 (class 2604 OID 16560)
-- Name: coupon id_coupon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon ALTER COLUMN id_coupon SET DEFAULT nextval('public.coupon_id_coupon_seq'::regclass);


--
-- TOC entry 3128 (class 2604 OID 16592)
-- Name: genre id_genre; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre ALTER COLUMN id_genre SET DEFAULT nextval('public.genre_id_genre_seq'::regclass);


--
-- TOC entry 3129 (class 2604 OID 16600)
-- Name: image_produit idimage; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_produit ALTER COLUMN idimage SET DEFAULT nextval('public.image_produit_idimage_seq'::regclass);


--
-- TOC entry 3130 (class 2604 OID 16655)
-- Name: password_reset_token id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_token ALTER COLUMN id SET DEFAULT nextval('public.password_reset_token_id_seq'::regclass);


--
-- TOC entry 3131 (class 2604 OID 16663)
-- Name: payment id_payment; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment ALTER COLUMN id_payment SET DEFAULT nextval('public.payment_id_payment_seq'::regclass);


--
-- TOC entry 3132 (class 2604 OID 16692)
-- Name: produit id_produit; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit ALTER COLUMN id_produit SET DEFAULT nextval('public.produit_id_produit_seq'::regclass);


--
-- TOC entry 3135 (class 2604 OID 16714)
-- Name: publicite id_publicite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicite ALTER COLUMN id_publicite SET DEFAULT nextval('public.publicite_id_publicite_seq'::regclass);


--
-- TOC entry 3136 (class 2604 OID 16735)
-- Name: reclam id_reclam; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reclam ALTER COLUMN id_reclam SET DEFAULT nextval('public.reclam_id_reclam_seq'::regclass);


--
-- TOC entry 3138 (class 2606 OID 16420)
-- Name: adresse adresse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_pkey PRIMARY KEY (id_adresse);


--
-- TOC entry 3140 (class 2606 OID 16428)
-- Name: afrik_pay afrik_pay_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afrik_pay
    ADD CONSTRAINT afrik_pay_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3142 (class 2606 OID 16433)
-- Name: afrikpay afrikpay_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afrikpay
    ADD CONSTRAINT afrikpay_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3144 (class 2606 OID 16438)
-- Name: app_role app_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_role
    ADD CONSTRAINT app_role_pkey PRIMARY KEY (id);


--
-- TOC entry 3146 (class 2606 OID 16443)
-- Name: attente_paiement attente_paiement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attente_paiement
    ADD CONSTRAINT attente_paiement_pkey PRIMARY KEY (id_paiement);


--
-- TOC entry 3148 (class 2606 OID 16454)
-- Name: banniere banniere_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banniere
    ADD CONSTRAINT banniere_pkey PRIMARY KEY (id_banniere);


--
-- TOC entry 3150 (class 2606 OID 16465)
-- Name: boutique boutique_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique
    ADD CONSTRAINT boutique_pkey PRIMARY KEY (id_boutique);


--
-- TOC entry 3162 (class 2606 OID 16476)
-- Name: caisse caisse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caisse
    ADD CONSTRAINT caisse_pkey PRIMARY KEY (id_caise);


--
-- TOC entry 3166 (class 2606 OID 16486)
-- Name: cart_item cart_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (id_item);


--
-- TOC entry 3164 (class 2606 OID 16481)
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id_cart);


--
-- TOC entry 3168 (class 2606 OID 16491)
-- Name: cash cash_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash
    ADD CONSTRAINT cash_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3170 (class 2606 OID 16496)
-- Name: cash_session cash_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_session
    ADD CONSTRAINT cash_session_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 16504)
-- Name: cash_transaction cash_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_transaction
    ADD CONSTRAINT cash_transaction_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 16515)
-- Name: catalogue_produit catalogue_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogue_produit
    ADD CONSTRAINT catalogue_produit_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 16523)
-- Name: categorie_produit categorie_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorie_produit
    ADD CONSTRAINT categorie_produit_pkey PRIMARY KEY (id_categorie);


--
-- TOC entry 3182 (class 2606 OID 16531)
-- Name: code_coupon code_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.code_coupon
    ADD CONSTRAINT code_coupon_pkey PRIMARY KEY (id_code);


--
-- TOC entry 3184 (class 2606 OID 16539)
-- Name: colis_digi_express colis_digi_express_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colis_digi_express
    ADD CONSTRAINT colis_digi_express_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 16551)
-- Name: commande commande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pkey PRIMARY KEY (idcommande);


--
-- TOC entry 3192 (class 2606 OID 16570)
-- Name: coupon_montant coupon_montant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_montant
    ADD CONSTRAINT coupon_montant_pkey PRIMARY KEY (id_coupon);


--
-- TOC entry 3190 (class 2606 OID 16565)
-- Name: coupon coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon
    ADD CONSTRAINT coupon_pkey PRIMARY KEY (id_coupon);


--
-- TOC entry 3194 (class 2606 OID 16575)
-- Name: coupon_pourcentage coupon_pourcentage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_pourcentage
    ADD CONSTRAINT coupon_pourcentage_pkey PRIMARY KEY (id_coupon);


--
-- TOC entry 3196 (class 2606 OID 16580)
-- Name: favorites favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 16594)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id_genre);


--
-- TOC entry 3200 (class 2606 OID 16605)
-- Name: image_produit image_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_produit
    ADD CONSTRAINT image_produit_pkey PRIMARY KEY (idimage);


--
-- TOC entry 3204 (class 2606 OID 16615)
-- Name: inventaire_item inventaire_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire_item
    ADD CONSTRAINT inventaire_item_pkey PRIMARY KEY (id_inventaireitem);


--
-- TOC entry 3202 (class 2606 OID 16610)
-- Name: inventaire inventaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire
    ADD CONSTRAINT inventaire_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 16623)
-- Name: localites localites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localites
    ADD CONSTRAINT localites_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 16628)
-- Name: momo momo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.momo
    ADD CONSTRAINT momo_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3210 (class 2606 OID 16636)
-- Name: mtn_money mtn_money_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtn_money
    ADD CONSTRAINT mtn_money_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3212 (class 2606 OID 16644)
-- Name: new_letter new_letter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.new_letter
    ADD CONSTRAINT new_letter_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 16649)
-- Name: om om_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.om
    ADD CONSTRAINT om_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3216 (class 2606 OID 16657)
-- Name: password_reset_token password_reset_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT password_reset_token_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 16668)
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id_payment);


--
-- TOC entry 3220 (class 2606 OID 16673)
-- Name: payment_to_caisse payment_to_caisse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_to_caisse
    ADD CONSTRAINT payment_to_caisse_pkey PRIMARY KEY (id_paiement);


--
-- TOC entry 3222 (class 2606 OID 16678)
-- Name: pays pays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 16686)
-- Name: point_relais point_relais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.point_relais
    ADD CONSTRAINT point_relais_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16699)
-- Name: produit produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id_produit);


--
-- TOC entry 3230 (class 2606 OID 16719)
-- Name: publicite publicite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicite
    ADD CONSTRAINT publicite_pkey PRIMARY KEY (id_publicite);


--
-- TOC entry 3232 (class 2606 OID 16724)
-- Name: quartiers quartiers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quartiers
    ADD CONSTRAINT quartiers_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 16729)
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16740)
-- Name: reclam reclam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reclam
    ADD CONSTRAINT reclam_pkey PRIMARY KEY (id_reclam);


--
-- TOC entry 3238 (class 2606 OID 16745)
-- Name: secteurs secteurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteurs
    ADD CONSTRAINT secteurs_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 16750)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (idstock);


--
-- TOC entry 3242 (class 2606 OID 16758)
-- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 16788)
-- Name: boutique uk_33kmycjqwcnlksrrreb9uu0xk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique
    ADD CONSTRAINT uk_33kmycjqwcnlksrrreb9uu0xk UNIQUE (nom_boutique);


--
-- TOC entry 3154 (class 2606 OID 16784)
-- Name: boutique uk_81yx32n5mtwqc0jqrmx9ouuyg; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique
    ADD CONSTRAINT uk_81yx32n5mtwqc0jqrmx9ouuyg UNIQUE (email_boutique);


--
-- TOC entry 3228 (class 2606 OID 16800)
-- Name: produit_inventaire_item_list uk_8bew7sqviirdn9qpe7tgyfc7k; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_inventaire_item_list
    ADD CONSTRAINT uk_8bew7sqviirdn9qpe7tgyfc7k UNIQUE (inventaire_item_list_id_inventaireitem);


--
-- TOC entry 3252 (class 2606 OID 16808)
-- Name: usershop_inventaire_list uk_8mympgxno5x3f9gns7m03u1am; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop_inventaire_list
    ADD CONSTRAINT uk_8mympgxno5x3f9gns7m03u1am UNIQUE (inventaire_list_id);


--
-- TOC entry 3244 (class 2606 OID 16802)
-- Name: usershop uk_dghckqs6347ydmikfhnyuthes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop
    ADD CONSTRAINT uk_dghckqs6347ydmikfhnyuthes UNIQUE (email);


--
-- TOC entry 3176 (class 2606 OID 16794)
-- Name: catalogue_produit uk_dtbonntmrh4ultn0mqnfhs6sr; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogue_produit
    ADD CONSTRAINT uk_dtbonntmrh4ultn0mqnfhs6sr UNIQUE (nom_produit);


--
-- TOC entry 3188 (class 2606 OID 16798)
-- Name: commande_inventaire_item_list uk_dw7w3pq0tk8ksd1fv6xbc9oj5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_inventaire_item_list
    ADD CONSTRAINT uk_dw7w3pq0tk8ksd1fv6xbc9oj5 UNIQUE (inventaire_item_list_id_inventaireitem);


--
-- TOC entry 3180 (class 2606 OID 16796)
-- Name: categorie_produit uk_ervby4sf8l2p61rfp230dxojy; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorie_produit
    ADD CONSTRAINT uk_ervby4sf8l2p61rfp230dxojy UNIQUE (nom_categorie);


--
-- TOC entry 3246 (class 2606 OID 16804)
-- Name: usershop uk_feq1bj467sy972wba1mead3xm; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop
    ADD CONSTRAINT uk_feq1bj467sy972wba1mead3xm UNIQUE (phone);


--
-- TOC entry 3160 (class 2606 OID 16792)
-- Name: boutique_ratings uk_fx2f30fumwshyi0k4sib61m6r; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique_ratings
    ADD CONSTRAINT uk_fx2f30fumwshyi0k4sib61m6r UNIQUE (ratings_id);


--
-- TOC entry 3248 (class 2606 OID 16806)
-- Name: usershop uk_iusnxl7ws5nbt41m3nk8qq8gs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop
    ADD CONSTRAINT uk_iusnxl7ws5nbt41m3nk8qq8gs UNIQUE (username);


--
-- TOC entry 3156 (class 2606 OID 16790)
-- Name: boutique uk_jdvps0ses5rvry7q5xu4sia5w; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique
    ADD CONSTRAINT uk_jdvps0ses5rvry7q5xu4sia5w UNIQUE (telephone_boutique);


--
-- TOC entry 3158 (class 2606 OID 16786)
-- Name: boutique uk_k81vdtr0dr0bsr0wv3xxf5i1l; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique
    ADD CONSTRAINT uk_k81vdtr0dr0bsr0wv3xxf5i1l UNIQUE (lien);


--
-- TOC entry 3250 (class 2606 OID 16766)
-- Name: usershop usershop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop
    ADD CONSTRAINT usershop_pkey PRIMARY KEY (id_user);


--
-- TOC entry 3254 (class 2606 OID 16777)
-- Name: view_client view_client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.view_client
    ADD CONSTRAINT view_client_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 16782)
-- Name: villes villes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.villes
    ADD CONSTRAINT villes_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 17061)
-- Name: produit fk12373dwhbrqcdqv81l45wctwh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT fk12373dwhbrqcdqv81l45wctwh FOREIGN KEY (idstock) REFERENCES public.stock(idstock);


--
-- TOC entry 3275 (class 2606 OID 16901)
-- Name: cash_transaction fk1i678gm2dgbtkqsgd5p1cafwl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_transaction
    ADD CONSTRAINT fk1i678gm2dgbtkqsgd5p1cafwl FOREIGN KEY (idcommande) REFERENCES public.commande(idcommande);


--
-- TOC entry 3267 (class 2606 OID 16861)
-- Name: cart fk1nc1ics8brhec6p4vy24rriu2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk1nc1ics8brhec6p4vy24rriu2 FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3329 (class 2606 OID 17171)
-- Name: view_client fk1ps237rfywj1pn2don0jtqyox; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.view_client
    ADD CONSTRAINT fk1ps237rfywj1pn2don0jtqyox FOREIGN KEY (idproduit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3266 (class 2606 OID 16856)
-- Name: boutique_ratings fk1ywt2dgatrp0rksnln1uu050y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique_ratings
    ADD CONSTRAINT fk1ywt2dgatrp0rksnln1uu050y FOREIGN KEY (boutique_id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3284 (class 2606 OID 16946)
-- Name: coupon_montant fk29i38ivkcx0k306fwqdqpr5af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_montant
    ADD CONSTRAINT fk29i38ivkcx0k306fwqdqpr5af FOREIGN KEY (id_coupon) REFERENCES public.coupon(id_coupon);


--
-- TOC entry 3313 (class 2606 OID 17091)
-- Name: produit_listproduit_associers fk2d086x4ysy32x5o3lki7qwv2k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_listproduit_associers
    ADD CONSTRAINT fk2d086x4ysy32x5o3lki7qwv2k FOREIGN KEY (produit_id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3331 (class 2606 OID 17181)
-- Name: villes fk2r0dn5e0x2xwhnwrh89octn0u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.villes
    ADD CONSTRAINT fk2r0dn5e0x2xwhnwrh89octn0u FOREIGN KEY (id_pays) REFERENCES public.pays(id);


--
-- TOC entry 3264 (class 2606 OID 16846)
-- Name: boutique_favorites fk2xhni96dfrrn3t370cog58a5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique_favorites
    ADD CONSTRAINT fk2xhni96dfrrn3t370cog58a5 FOREIGN KEY (boutique_id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3304 (class 2606 OID 17046)
-- Name: produit fk33i8d2mdmhlgy04pc05jiqyoo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT fk33i8d2mdmhlgy04pc05jiqyoo FOREIGN KEY (boutiques_produit_id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3272 (class 2606 OID 16886)
-- Name: cash_session fk3fckc8gtuo68qboamjfkjqfef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_session
    ADD CONSTRAINT fk3fckc8gtuo68qboamjfkjqfef FOREIGN KEY (id_caise) REFERENCES public.caisse(id_caise);


--
-- TOC entry 3285 (class 2606 OID 16951)
-- Name: coupon_pourcentage fk3nrxsuhgraeiulp8299r0uocc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupon_pourcentage
    ADD CONSTRAINT fk3nrxsuhgraeiulp8299r0uocc FOREIGN KEY (id_coupon) REFERENCES public.coupon(id_coupon);


--
-- TOC entry 3271 (class 2606 OID 16881)
-- Name: cash fk5bixxri96iprmpdgqxxe03t16; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash
    ADD CONSTRAINT fk5bixxri96iprmpdgqxxe03t16 FOREIGN KEY (id_payment) REFERENCES public.payment(id_payment);


--
-- TOC entry 3295 (class 2606 OID 17001)
-- Name: inventaire_item fk5yfanp8ddtr1jqi1ljh0w7mfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire_item
    ADD CONSTRAINT fk5yfanp8ddtr1jqi1ljh0w7mfo FOREIGN KEY (id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3317 (class 2606 OID 17111)
-- Name: rating fk6wggtvy25qlganb6yftvtdktb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fk6wggtvy25qlganb6yftvtdktb FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3321 (class 2606 OID 17131)
-- Name: transaction fk78ucm82veufaaggqeoggtxb99; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fk78ucm82veufaaggqeoggtxb99 FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3330 (class 2606 OID 17176)
-- Name: view_client fk7bv83cffk80s9qyhtc5nkng29; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.view_client
    ADD CONSTRAINT fk7bv83cffk80s9qyhtc5nkng29 FOREIGN KEY (iduser) REFERENCES public.usershop(id_user);


--
-- TOC entry 3286 (class 2606 OID 16956)
-- Name: favorites fk8e3jvvul9flk6aqppf0h9qjt1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT fk8e3jvvul9flk6aqppf0h9qjt1 FOREIGN KEY (app_user_id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3327 (class 2606 OID 17161)
-- Name: usershop_roles fk8h7wluqs236jkmgqfp5uj4bsr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop_roles
    ADD CONSTRAINT fk8h7wluqs236jkmgqfp5uj4bsr FOREIGN KEY (app_user_id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3306 (class 2606 OID 17056)
-- Name: produit fk9baujbqpfc6aenjfcf2i8xa0i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT fk9baujbqpfc6aenjfcf2i8xa0i FOREIGN KEY (id_coupon) REFERENCES public.coupon_pourcentage(id_coupon);


--
-- TOC entry 3312 (class 2606 OID 17086)
-- Name: produit_listproduit_associers fkakatytucna66fs431dkod0l6p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_listproduit_associers
    ADD CONSTRAINT fkakatytucna66fs431dkod0l6p FOREIGN KEY (listproduit_associers_id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3310 (class 2606 OID 17076)
-- Name: produit_inventaire_item_list fkbanbfka55nor1cys1ej4fgnnx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_inventaire_item_list
    ADD CONSTRAINT fkbanbfka55nor1cys1ej4fgnnx FOREIGN KEY (inventaire_item_list_id_inventaireitem) REFERENCES public.inventaire_item(id_inventaireitem);


--
-- TOC entry 3300 (class 2606 OID 17026)
-- Name: om fkbcbd2m9m8y2w01wfdy4sl86jd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.om
    ADD CONSTRAINT fkbcbd2m9m8y2w01wfdy4sl86jd FOREIGN KEY (id_payment) REFERENCES public.payment(id_payment);


--
-- TOC entry 3309 (class 2606 OID 17071)
-- Name: produit_favorites fkbiva8qdibxunbg03o44jt376g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_favorites
    ADD CONSTRAINT fkbiva8qdibxunbg03o44jt376g FOREIGN KEY (produit_id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3283 (class 2606 OID 16941)
-- Name: commande_inventaire_item_list fkbx07hbcw9t42svwlg4f008jq9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_inventaire_item_list
    ADD CONSTRAINT fkbx07hbcw9t42svwlg4f008jq9 FOREIGN KEY (commande_idcommande) REFERENCES public.commande(idcommande);


--
-- TOC entry 3273 (class 2606 OID 16891)
-- Name: cash_session fkc0978hac1lji134i3wfikp1uj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_session
    ADD CONSTRAINT fkc0978hac1lji134i3wfikp1uj FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3308 (class 2606 OID 17066)
-- Name: produit_favorites fkc6taori1oioonins8vtljisev; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_favorites
    ADD CONSTRAINT fkc6taori1oioonins8vtljisev FOREIGN KEY (favorites_id) REFERENCES public.favorites(id);


--
-- TOC entry 3302 (class 2606 OID 17036)
-- Name: payment_to_caisse fkd1xyledo3dfv57bmr07bvvhnj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_to_caisse
    ADD CONSTRAINT fkd1xyledo3dfv57bmr07bvvhnj FOREIGN KEY (id_paiement) REFERENCES public.payment(id_payment);


--
-- TOC entry 3316 (class 2606 OID 17106)
-- Name: rating fkdowvigmtne4cv30e78xcg5jt1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fkdowvigmtne4cv30e78xcg5jt1 FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3318 (class 2606 OID 17116)
-- Name: secteurs fkduoo6xp1m5rkuc44k4k8vjtdy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteurs
    ADD CONSTRAINT fkduoo6xp1m5rkuc44k4k8vjtdy FOREIGN KEY (id_quartier) REFERENCES public.quartiers(id);


--
-- TOC entry 3289 (class 2606 OID 16971)
-- Name: favorites_produitsfavotis_list fkeiesv8s2i84y5jla80me5xdrt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_produitsfavotis_list
    ADD CONSTRAINT fkeiesv8s2i84y5jla80me5xdrt FOREIGN KEY (produitsfavotis_list_id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3292 (class 2606 OID 16986)
-- Name: inventaire fkeo4gk454nv07pgmsliactw6cw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire
    ADD CONSTRAINT fkeo4gk454nv07pgmsliactw6cw FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3314 (class 2606 OID 17096)
-- Name: publicite fket6m35b61hxw3kbdpntb9elum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicite
    ADD CONSTRAINT fket6m35b61hxw3kbdpntb9elum FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3290 (class 2606 OID 16976)
-- Name: favorites_produitsfavotis_list fketk9b8jbaaj3fdw0ruqcijjag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_produitsfavotis_list
    ADD CONSTRAINT fketk9b8jbaaj3fdw0ruqcijjag FOREIGN KEY (favorites_id) REFERENCES public.favorites(id);


--
-- TOC entry 3277 (class 2606 OID 16911)
-- Name: code_coupon fkf3mlhtpcbxe3hp4sln9i0q4i6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.code_coupon
    ADD CONSTRAINT fkf3mlhtpcbxe3hp4sln9i0q4i6 FOREIGN KEY (id_coupon) REFERENCES public.coupon(id_coupon);


--
-- TOC entry 3278 (class 2606 OID 16916)
-- Name: commande fkf5812opyxpshw6cl6iualkyvg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT fkf5812opyxpshw6cl6iualkyvg FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);


--
-- TOC entry 3296 (class 2606 OID 17006)
-- Name: inventaire_item fkfha93x1srt5gfx26c065s3ihm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire_item
    ADD CONSTRAINT fkfha93x1srt5gfx26c065s3ihm FOREIGN KEY (transaction_id) REFERENCES public.transaction(id);


--
-- TOC entry 3320 (class 2606 OID 17126)
-- Name: transaction fkfq0fbtjhhd8ik29i64o7yofs4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fkfq0fbtjhhd8ik29i64o7yofs4 FOREIGN KEY (id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3261 (class 2606 OID 16831)
-- Name: attente_paiement fkfwguldjlbsj2er8cna76nn7ym; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attente_paiement
    ADD CONSTRAINT fkfwguldjlbsj2er8cna76nn7ym FOREIGN KEY (id_paiement) REFERENCES public.payment(id_payment);


--
-- TOC entry 3298 (class 2606 OID 17016)
-- Name: momo fkgc1qivqpu9pj9al4hcf5wjn5p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.momo
    ADD CONSTRAINT fkgc1qivqpu9pj9al4hcf5wjn5p FOREIGN KEY (id_payment) REFERENCES public.payment(id_payment);


--
-- TOC entry 3325 (class 2606 OID 17151)
-- Name: usershop_inventaire_list fkgendnd1d7dc5borqg4nkjtcim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop_inventaire_list
    ADD CONSTRAINT fkgendnd1d7dc5borqg4nkjtcim FOREIGN KEY (app_user_id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3319 (class 2606 OID 17121)
-- Name: transaction fkghxw4crb4k4ikl9vrjdirylf6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fkghxw4crb4k4ikl9vrjdirylf6 FOREIGN KEY (id_inventaireitem) REFERENCES public.inventaire_item(id_inventaireitem);


--
-- TOC entry 3315 (class 2606 OID 17101)
-- Name: quartiers fkh8em3qawiwljlaus90t8r0hxf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quartiers
    ADD CONSTRAINT fkh8em3qawiwljlaus90t8r0hxf FOREIGN KEY (id_ville) REFERENCES public.villes(id);


--
-- TOC entry 3305 (class 2606 OID 17051)
-- Name: produit fkhes14ubptnj29h19avtd8qf9x; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT fkhes14ubptnj29h19avtd8qf9x FOREIGN KEY (idcatalogue) REFERENCES public.catalogue_produit(id);


--
-- TOC entry 3279 (class 2606 OID 16921)
-- Name: commande fkhrniuj2nxlttx32wxclwm63ni; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT fkhrniuj2nxlttx32wxclwm63ni FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3288 (class 2606 OID 16966)
-- Name: favorites_boutiquefavoris_list fkhucn6389nktcpoyiinn79t6vp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_boutiquefavoris_list
    ADD CONSTRAINT fkhucn6389nktcpoyiinn79t6vp FOREIGN KEY (favorites_id) REFERENCES public.favorites(id);


--
-- TOC entry 3276 (class 2606 OID 16906)
-- Name: catalogue_produit fkhxg4b603tqvxuf1aexsgxebpv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogue_produit
    ADD CONSTRAINT fkhxg4b603tqvxuf1aexsgxebpv FOREIGN KEY (id_categorie) REFERENCES public.categorie_produit(id_categorie);


--
-- TOC entry 3260 (class 2606 OID 16826)
-- Name: afrikpay fkig5sqf1d090ajm4b0ykusxso1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afrikpay
    ADD CONSTRAINT fkig5sqf1d090ajm4b0ykusxso1 FOREIGN KEY (id_payment) REFERENCES public.payment(id_payment);


--
-- TOC entry 3323 (class 2606 OID 17141)
-- Name: usershop fkipyj61ojx8metr0hcvldgbjay; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop
    ADD CONSTRAINT fkipyj61ojx8metr0hcvldgbjay FOREIGN KEY (favorites_id) REFERENCES public.favorites(id);


--
-- TOC entry 3262 (class 2606 OID 16836)
-- Name: boutique fkjce534dl26qumd4a5hh6dpjpx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique
    ADD CONSTRAINT fkjce534dl26qumd4a5hh6dpjpx FOREIGN KEY (id_caise) REFERENCES public.caisse(id_caise);


--
-- TOC entry 3280 (class 2606 OID 16926)
-- Name: commande fkkeehxrn9ru1p4y45ws9v3mkl4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT fkkeehxrn9ru1p4y45ws9v3mkl4 FOREIGN KEY (id_paiement) REFERENCES public.payment(id_payment);


--
-- TOC entry 3303 (class 2606 OID 17041)
-- Name: point_relais fkkty4iownndntsqgxsf2nsahfe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.point_relais
    ADD CONSTRAINT fkkty4iownndntsqgxsf2nsahfe FOREIGN KEY (id_secteur) REFERENCES public.secteurs(id);


--
-- TOC entry 3328 (class 2606 OID 17166)
-- Name: view_client fklfcsxu72wol3jhgcybj20ti3e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.view_client
    ADD CONSTRAINT fklfcsxu72wol3jhgcybj20ti3e FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3270 (class 2606 OID 16876)
-- Name: cart_item fklikq479tfkteqxya6gbyknvcl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT fklikq479tfkteqxya6gbyknvcl FOREIGN KEY (id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3257 (class 2606 OID 16811)
-- Name: adresse fkm8o7mgqh78llknjagocb1fua0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT fkm8o7mgqh78llknjagocb1fua0 FOREIGN KEY (secteurs_id) REFERENCES public.secteurs(id);


--
-- TOC entry 3281 (class 2606 OID 16931)
-- Name: commande fkmf98lki0eepdekeftomeogwwe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT fkmf98lki0eepdekeftomeogwwe FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3301 (class 2606 OID 17031)
-- Name: password_reset_token fkmhhsr3627larkm0e3b8lbsiof; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT fkmhhsr3627larkm0e3b8lbsiof FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3274 (class 2606 OID 16896)
-- Name: cash_transaction fkmidiyl4r6wed2qw51awv5fco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_transaction
    ADD CONSTRAINT fkmidiyl4r6wed2qw51awv5fco FOREIGN KEY (id_cashssesion) REFERENCES public.cash_session(id);


--
-- TOC entry 3263 (class 2606 OID 16841)
-- Name: boutique_favorites fkn77e2meqqhuy0rla2pjrlna2x; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique_favorites
    ADD CONSTRAINT fkn77e2meqqhuy0rla2pjrlna2x FOREIGN KEY (favorites_id) REFERENCES public.favorites(id);


--
-- TOC entry 3322 (class 2606 OID 17136)
-- Name: usershop fkndwlvdwotq0qybptgtni9ar2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop
    ADD CONSTRAINT fkndwlvdwotq0qybptgtni9ar2 FOREIGN KEY (id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3326 (class 2606 OID 17156)
-- Name: usershop_roles fknp7blfq0kyclxcbpah6sugedh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop_roles
    ADD CONSTRAINT fknp7blfq0kyclxcbpah6sugedh FOREIGN KEY (roles_id) REFERENCES public.app_role(id);


--
-- TOC entry 3265 (class 2606 OID 16851)
-- Name: boutique_ratings fknqmrat8ih1lov30wfkjdc8hsy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boutique_ratings
    ADD CONSTRAINT fknqmrat8ih1lov30wfkjdc8hsy FOREIGN KEY (ratings_id) REFERENCES public.rating(id);


--
-- TOC entry 3269 (class 2606 OID 16871)
-- Name: cart_item fkntiy8xl2v52t5dywtxyht8p2l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT fkntiy8xl2v52t5dywtxyht8p2l FOREIGN KEY (id_commande) REFERENCES public.commande(idcommande);


--
-- TOC entry 3297 (class 2606 OID 17011)
-- Name: localites fkocpns2stedvkmbdnvsloon2dq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localites
    ADD CONSTRAINT fkocpns2stedvkmbdnvsloon2dq FOREIGN KEY (id_secteurs) REFERENCES public.secteurs(id);


--
-- TOC entry 3259 (class 2606 OID 16821)
-- Name: afrik_pay fkomkyhuynd4xgwlhs8ev38sb3a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afrik_pay
    ADD CONSTRAINT fkomkyhuynd4xgwlhs8ev38sb3a FOREIGN KEY (id_payment) REFERENCES public.payment(id_payment);


--
-- TOC entry 3282 (class 2606 OID 16936)
-- Name: commande_inventaire_item_list fkq1d969qft9950cnqp70d0ppbf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_inventaire_item_list
    ADD CONSTRAINT fkq1d969qft9950cnqp70d0ppbf FOREIGN KEY (inventaire_item_list_id_inventaireitem) REFERENCES public.inventaire_item(id_inventaireitem);


--
-- TOC entry 3324 (class 2606 OID 17146)
-- Name: usershop_inventaire_list fkqewm6rg7df4jthvg5r0l9nvvl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usershop_inventaire_list
    ADD CONSTRAINT fkqewm6rg7df4jthvg5r0l9nvvl FOREIGN KEY (inventaire_list_id) REFERENCES public.inventaire(id);


--
-- TOC entry 3287 (class 2606 OID 16961)
-- Name: favorites_boutiquefavoris_list fkqkjr7q5cw6k6fbm7sjx764j4h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_boutiquefavoris_list
    ADD CONSTRAINT fkqkjr7q5cw6k6fbm7sjx764j4h FOREIGN KEY (boutiquefavoris_list_id_boutique) REFERENCES public.boutique(id_boutique);


--
-- TOC entry 3291 (class 2606 OID 16981)
-- Name: image_produit fkqt8wrn7g4ru82y7pup2lv4843; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_produit
    ADD CONSTRAINT fkqt8wrn7g4ru82y7pup2lv4843 FOREIGN KEY (id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 3268 (class 2606 OID 16866)
-- Name: cart_item fks3p4c1u0wxi7wg88j5gxpxiqe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT fks3p4c1u0wxi7wg88j5gxpxiqe FOREIGN KEY (id_cart) REFERENCES public.cart(id_cart);


--
-- TOC entry 3258 (class 2606 OID 16816)
-- Name: adresse fkt8kbshps5w0skx2ol7m84wnah; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT fkt8kbshps5w0skx2ol7m84wnah FOREIGN KEY (user_id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3293 (class 2606 OID 16991)
-- Name: inventaire fkt9eeexl1dqrsyla3rcb4cyjkh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire
    ADD CONSTRAINT fkt9eeexl1dqrsyla3rcb4cyjkh FOREIGN KEY (id_user) REFERENCES public.usershop(id_user);


--
-- TOC entry 3299 (class 2606 OID 17021)
-- Name: mtn_money fktj93gu1weilfibjl8cklm3egq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtn_money
    ADD CONSTRAINT fktj93gu1weilfibjl8cklm3egq FOREIGN KEY (id_payment) REFERENCES public.payment(id_payment);


--
-- TOC entry 3294 (class 2606 OID 16996)
-- Name: inventaire_item fktq5x262u2s55m2g6f91y2jn7t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventaire_item
    ADD CONSTRAINT fktq5x262u2s55m2g6f91y2jn7t FOREIGN KEY (id_inventaire) REFERENCES public.inventaire(id);


--
-- TOC entry 3311 (class 2606 OID 17081)
-- Name: produit_inventaire_item_list fkwrpabeop2atjvkihc4wmp1p0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit_inventaire_item_list
    ADD CONSTRAINT fkwrpabeop2atjvkihc4wmp1p0 FOREIGN KEY (produit_id_produit) REFERENCES public.produit(id_produit);


-- Completed on 2021-02-17 00:19:39

--
-- PostgreSQL database dump complete
--

